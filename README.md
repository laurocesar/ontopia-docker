# ontopia-docker
Ontopia docker

## Building and Running

Build the image named `omnigator`:

```bash
docker build --rm -t omnigator .
```

Created and run the container:

```bash
docker run --name omnigator -p 8080:8080 -d omnigator
```

Then, to just start the container:

```bash
docker start omnigator
``