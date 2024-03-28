# dev-tools
Some tools that come in handy during development

- [dev-tools](#dev-tools)
- [Init](#init)
- [FAQ](#faq)
  - [Setting Gogs](#setting-gogs)
  - [Jenkins admin password](#jenkins-admin-password)


# Init

Start by running this script to set up the network.
```sh
sh start.sh
```

Start the containers by running the following command.
```sh
docker compose up
```

Initialize the alpine container by running the following command. This command will install all necessary tools and set them up

```sh
docker exec -it dev-tools-my-alpine-1 sh /root/mnt/init.sh
```

# FAQ

## Setting Gogs 

Add the following to `./vols/gogs/gogs/conf/app.ini` in order to accept webhooks from local network
```sh
[security]
LOCAL_NETWORK_ALLOWLIST = *
```

## Jenkins admin password

The password is in the file `./vols/jenkins/secrets/initialAdminPassword`