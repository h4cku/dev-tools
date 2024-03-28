# dev-tools
Some tools that come in handy during development

- [dev-tools](#dev-tools)
- [Init](#init)
- [FAQ](#faq)
  - [Setting Gogs](#setting-gogs)
  - [Jenkins admin password](#jenkins-admin-password)
  - [Getting elasticsearch secrets](#getting-elasticsearch-secrets)


# Init

Start by setting up the isolated network for our containers.
```sh
docker network create --subnet=172.31.0.0/16 --gateway=172.31.0.1 dev-network
```

Start the containers by running the following command.
```sh
docker compose up
```

Initialize the alpine container by running the following command. This command will install all necessary tools and set them up

```sh
docker exec  -it dev-tools-my-alpine-1 dos2unix /root/mnt/init.sh
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

## Getting elasticsearch secrets

```sh
docker exec -it dev-tools-my-elasticsearch /usr/share/elasticsearch/bin/elasticsearch-reset-password -u elastic
docker exec -it dev-tools-my-elasticsearch /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s kibana
```