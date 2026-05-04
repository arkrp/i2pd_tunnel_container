sleep 30
export AUTOSSH_GATETIME=0
nohup autossh -M 0\
   -o "StrictHostKeyChecking=accept-new"\
   -o "ServerAliveInterval 30"\
   -o "ServerAliveCountMax 3"\
   -p 9995\
   -i /app/ssh_private_key\
   -NL 8000:127.0.0.1:8000\
   hannahnelson@127.0.0.1 &
