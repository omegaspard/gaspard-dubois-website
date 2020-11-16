# TODO Put this on a CI/CD workflow.
# Script to deploy  the application.
# You need to set the variables IP_MACHINE, USER, PASSWORD and SECRET_KEY

sbt dist
sshpass -p $PASSWORD scp -rp target/universal/gaspard-dubois-website-1.0-SNAPSHOT.zip  $USER@$IP_MACHINE:/home/ubuntu/applications/zips
sshpass -p $PASSWORD ssh $USER@$IP_MACHINE "cd applications; unzip -o zips/gaspard-dubois-website-1.0-SNAPSHOT.zip; cd gaspard-dubois-website-1.0-SNAPSHOT; kill -9 \$(cat RUNNING_PID); rm RUNNING_PID; nohup sudo bin/gaspard-dubois-website -Dplay.http.secret.key=\"${SECRET_KEY}\" -Dhttp.port=80 &"

