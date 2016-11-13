# ontopia-docker
Ontopia docker

## Building and Running

Build the image named `ontopia`:

```bash
docker build --rm -t ontopia .
```

Created and run the container:

```bash
docker run --name ontopia -p 8080:8080 -d ontopia
```

Then, to just start the container:

```bash
docker start ontopia
``