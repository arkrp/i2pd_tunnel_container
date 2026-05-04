Project Name: I2pd Tunnel Container
Author: Hannah Nelson

INTRODUCTION

BEHOLD a neat little tunneling solution using i2pd as my hole puncher. It uses i2pd to open a tunnel to the ssh port and then autossh to make the rest of the tunnels! Currently it is configured to hold open a tunnel between my server and my laptop for sillytavern.

CONFIGURATION

todo

Like usual you need to copy the service into /etc/systemd/system/ you also need to update the directory inside the service file so the service knows where to look for the script.

