# ontopia-docker

Ontopia docker. Public repository at https://hub.docker.com/r/laurocesar/ontopia/

## Building or Pulling 

### Building from scratch

Build the image named `ontopia`:

```bash
mkdir ontopia-docker
cd ontopia-docker

git clone https://github.com/laurocesar/ontopia-docker.git
docker build --rm -t ontopia .
```

### Pulling from Dockerhub

```bash
docker pull laurocesar/ontopia
``` 

## Running

Created and run the container:

```bash
docker run --name ontopia -p 8080:8080 -d ontopia
```

If you want to link some local directory on the container, you should use this:

```bash
docker run --name ontopia -v "$(pwd)":/opt/host -p 8080:8080 -d ontopia
```

Similarly, you can link a single file to the `topicmaps` directory:

docker run --name ontopia -v "$(pwd)/ontology.xtm":/opt/ontopia/topicmaps/ontology.xtm -p 8080:8080 -d ontopia

## Controlling the container

After a system restart, you can just start the container:

```bash
docker start ontopia
```

Or even stop it:

```bash
docker stop ontopia
```