
### Setup

./run_ansible.sh to install and check ansible installation.

### Server

Recommendations: [Vultr](https://vultr.com) or [DigitalOcean](https://www.digitalocean.com/).

Needs root access with ssh, ssh key or password.

Add inventory `/etc/ansible/hosts` with server configurations.

e.g.
```
trojan:  # must be 'trojan'. used in 'setup_trojan_server.sh'.
    hosts:
        hostname1.com:
            domain: hostname1.com
            password: password1
            email: xxx@xxx.com  # for certbot.
        hostname2.com:
            domain: hostname2.com
            password: password2
            email: xxx@xxx.com
```

Run `./setup_trojan_server.sh` to setup the servers.

### Client

Run `./setup_trojan_client.sh` to setup the client.
