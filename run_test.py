import os

test_dir = "/home/brighterw/sail-dev/logs/"
log_list = os.listdir(test_dir)

report = open("sail.report", "w")

for filename in log_list:
    log = open(test_dir + filename, "r")
    content = log.readlines()
    if "SUCCESS" in content[-1] or "SUCCESS" in content[-4]:
        report.write(filename[:-4] + " SUCCESS\n\n")
    else:
        report.write(filename[:-4] + " FAILURE\n\n")
    log.close()

report.close()
