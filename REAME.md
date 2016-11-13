# Building and Running

Build the image named `omnigator`:

```bash
docker build --rm -t omnigator .
```

Run it:

```bash
docker run --name omnigator -d -p 8080:8080 omnigator
docker start omnigator
```