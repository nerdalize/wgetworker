# WgetWorker

Simplest possible Docker Container image that can run on the Nerdalize platform.

This image serves to prove it's really, really simple make an image ready for the Nerdalize HPC platform.

## Usage


Pre-built:
```
docker run nerdalize/wgetworker www.nerdalize.com
```

Build and run it yourself:
```
$ git clone https://github.com/nerdalize/wgetworker.git
$ docker build -t wgetworker .
$ docker run wgetworker www.nerdalize.com
```
