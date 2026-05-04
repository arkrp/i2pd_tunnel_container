ok three files go in here!

1. A private ssh key file named ssh_private_key this is the authentication key you use to login to the server. Password login is not supported by this application.

2. the tunnels.conf file. you should only ever edit the .b32.ip2 address in this file. if you need to do more tunneling use autossh as it is the best secure way to make tunnels once the pilot tunnel is established.

3. a bash file called autossh_tunnels.sh this is where you can open autossh tunnels to connect to non ssh services.
