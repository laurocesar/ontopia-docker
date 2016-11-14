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
`` 

## Running

Created and run the container:

```bash
docker run --name ontopia -p 8080:8080 -d ontopia
```

Then, to just start the container:

```bash
docker start ontopia
``