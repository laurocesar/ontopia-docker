# ontopia-docker
Ontopia docker

## Building and Running

Build the image named `omnigator`:

```bash
docker build --rm -t omnigator .
```

Run it:

```bash
docker run --name omnigator -p 8080:8080 -d omnigator
docker start omnigator
```