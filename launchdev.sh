#!/usr/bin/bash
podman run\
   --replace\
   -it\
   -v i2p_addressbook:/root/.i2pd/addressbook\
   -v i2p_destinations:/root/.i2pd/destinations\
   -v i2p_netDb:/root/.i2pd/netDb\
   -v i2p_peerProfiles:/root/.i2pd/peerProfiles\
   -v i2p_tags:/root/.i2pd/tags\
   --network=host\
   --hostname tunnelrat\
   --name tunnelrat\
   i2pd_tunnel_container
