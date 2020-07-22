import subprocess
import re
data = [
    {
        "origin":"",
        "remote":""
    },
]
for key in data:
    origin = key['origin']
    remote = key['remote']
    match = re.search(".+\/(.*.git)$",origin)
    directory = match.group(1)
    print(directory)
    subprocess.run(["sh","migrationscript.sh","-o",origin,"-r",remote,"-d",directory])

