## Requirements

Both Docker and boot2docker need to be at version 1.3.

## Building the weasy image

First, build the container:

```
docker build -t odewahn/weasy .
```

Then, you can run it:

```
docker run -p 5000:5000 -it -v $(pwd):/usr/data odewahn/weasy /bin/bash
```

To run the converter:

```
weasyprint http://weasyprint.org ./weasyprint-website.pdf

weasyprint http://atlas.oreilly.com ./atlas-website.pdf
```

This will drop the files onto the host.

## Using the Navigator

This isn't working yet.  Somehow, you have to set the host to 0.0.0.0, but the navigator seems to be hardcoded to 127.0.0.1.  



Once this is figured out, you can run:

```
python -m weasyprint.navigator
```

and then go to:

```
192.168.59.103:5000
```
