# dev-tools
Some tools that come in handy during development

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