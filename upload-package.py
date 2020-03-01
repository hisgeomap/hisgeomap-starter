import csv
import os
import subprocess


# Get all server ips and keys
server_ips = []
server_keys = []
path = os.path.join(os.path.dirname(__file__), "constants/server.csv")
with open(path) as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    line_count = 0
    for row in csv_reader:
        print("Getting Server Info(" + row[1] + ").")
        server_ips.append(row[1])
        server_keys.append(row[2])

# Send bundle
publish_user = "root"
key_folder = os.path.join(os.path.dirname(__file__), "keys")
dest_folder = "~/hisgeomap"
for (ip, key) in zip(server_ips, server_keys):
    if(key != "N/A"):
        key_abs_path = os.path.abspath(key_folder + "/" + key)
        src_abs_path = os.path.abspath(os.path.join(
            os.path.dirname(__file__), "../deploy/hisgeomap.tar.gz"))
        dest_abs_path = f"{publish_user}@{ip}:{dest_folder}/"
        command = f"scp -i {key_abs_path} {src_abs_path} {dest_abs_path}"
        print(f"Upload package to Server({ip}).")
        os.system(command)

print("Publish Success!!")
