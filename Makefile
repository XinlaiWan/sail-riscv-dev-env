SEW ?= 32
LMUL ?= 1
TEST_CONFIG = generateall_vlen512_vsew$(SEW)_lmul$(LMUL)

PROJ_ROOT := /home/brighterw/sail-riscv-dev-env

ASM_DIR  := $(PROJ_ROOT)/rvv_test_series/$(TEST_CONFIG)
ELF_DIR  := $(PROJ_ROOT)/elfs
SIM_DIR  := $(PROJ_ROOT)/sail-riscv/c_emulator
DUMP_DIR := $(PROJ_ROOT)/dump
LOG_DIR  := $(PROJ_ROOT)/logs
ATG_DIR  := $(PROJ_ROOT)/rvv-atg

ASM_FILES := $(wildcard $(ASM_DIR)/*)
ELF_FILES := $(patsubst $(ASM_DIR)/%.S, $(ELF_DIR)/%.elf, $(ASM_FILES))
LOG_FILES := $(patsubst $(ASM_DIR)/%.S, $(LOG_DIR)/%.log, $(ASM_FILES))
DUMP_FILES := $(patsubst $(ASM_DIR)/%.S, $(DUMP_DIR)/%.dump, $(ASM_FILES))

all: init elf dump run report

.PHONY: all init elf dump run report clean

init:
	mkdir $(ELF_DIR)
	mkdir $(LOG_DIR)
	mkdir $(DUMP_DIR)

elf: $(ELF_FILES)

$(ELF_DIR)/%.elf: $(ASM_DIR)/%.S
	riscv64-unknown-elf-gcc -march=rv64gv -w -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -T $(ATG_DIR)/env/p/link.ld -I $(ATG_DIR)/env/macros/vsew$(SEW)_lmul$(LMUL) -I $(ATG_DIR)/env/p -I $(ATG_DIR)/env -I $(ATG_DIR)/env/sail_cSim -mabi=lp64 $< -o $@ -DTEST_CASE_1=True -DXLEN=64 -DFLEN=64

dump: $(DUMP_FILES)

$(DUMP_DIR)/%.dump: $(ELF_DIR)/%.elf
	riscv64-unknown-elf-objdump -d $< > $@

run: $(LOG_FILES)

$(LOG_DIR)/%.log: $(ELF_DIR)/%.elf
	$(SIM_DIR)/riscv_sim_RV64 -z 2048 $< > $@
	# $(SIM_DIR)/riscv_ocaml_sim_RV64 $< > $@

report:
	python3 run_test.py

clean:
	-rm -rf $(ELF_DIR) $(DUMP_DIR) $(LOG_DIR)
	-rm sail.report
