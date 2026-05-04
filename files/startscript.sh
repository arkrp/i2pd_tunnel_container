echo "Booting server"
cp /app/tunnels.conf /root/.i2pd
nohup bash /app/autossh_tunnels.sh &
i2pd
