So it turns out that i2pd doesn't install nicely on linux mint! Thats ok though! because it's a network application! So I made this tiny little podman container which runs alpine and should let me make tunnels! The goal is that I just give it a tunnels.conf and it goes to work!

So to configure this, you need to make a client tunnel in the tunnels.conf, if you want the tunnel to use a specific key (like if you were working with access control) you need to acquire a key and place it in keys to correspond to the tunnel configuration.

I think I might stick a keygen program in there to make this more self contained..

I'm also going to disable the proxies because this container is really just for tunneling.
