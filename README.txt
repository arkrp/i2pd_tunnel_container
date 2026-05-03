Project Name: I2pd Tunnel Container
Author: Hannah Nelson

INTRODUCTION

So it turns out that i2pd doesn't install nicely on linux mint! Thats ok though! because it's a network application! So I made this tiny little podman container which runs alpine and should let me make tunnels! The goal is that I just give it a tunnels.conf and it makes the tunnels!

CONFIGURATION

So to configure this, you need to make a client tunnel in the tunnels.conf. Your tunnels should store their keys as keys/keyname.dat this way the keys end up being in the key volume and being persistent.

SETUP

Like usual you need to copy the service into /etc/systemd/system/ you also need to update the directory inside the service file so the service knows where to look for the script.
