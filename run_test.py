import os

log_dir = "/home/brighterw/sail-riscv-dev-env/logs/"
log_list = os.listdir(log_dir)

report = open("sail.report", "w")

for filename in log_list:
    log = open(log_dir + filename, "r")
    content = log.readlines()
    if "SUCCESS" in content[-1] or "SUCCESS" in content[-4]:
        report.write(filename[:-4] + " SUCCESS\n\n")
    else:
        report.write(filename[:-4] + " FAILURE\n\n")
    log.close()

report.close()
