#!/usr/bin/bash
#section-start find the script directory
SCRIPT_DIR=$(dirname $(readlink -f "$0"))
echo $SCRIPT_DIR
#section-end
#section-start build the image
podman build --jobs 0 -t i2pd_tunnel_container $SCRIPT_DIR
#section-end
#section-start launch the container
podman run\
   --replace\
   -it\
   -v i2p:/root/.i2pd\
   --network=host\
   --hostname tunnelrat\
   --name tunnelrat\
   i2pd_tunnel_container
#section-end
   #-v i2p_keys:/root/.i2pd/keys\
   #-v i2p_addressbook:/root/.i2pd/addressbook\
   #-v i2p_destinations:/root/.i2pd/destinations\
   #-v i2p_netDb:/root/.i2pd/netDb\
   #-v i2p_peerProfiles:/root/.i2pd/peerProfiles\
   #-v i2p_tags:/root/.i2pd/tags\
