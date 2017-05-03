# WgetWorker

Simplest possible Docker Container image that can run on the Nerdalize platform.

This image serves to prove it's really, really simple to make an image ready for the Nerdalize HPC platform.

## Usage

With the pre-built image:
```
docker run nerdalize/wgetworker www.nerdalize.com
```

Build and run it yourself:
```
$ git clone https://github.com/nerdalize/wgetworker.git
$ docker build -t wgetworker .
$ docker run wgetworker www.nerdalize.com
```

## Building your own image for the Nerdalize platform

If you're building your own Docker image for the Nerdalize platform, the only thing you need to take care about is making sure that the finished Docker image takes one argument which is the 'task' to be done. That's what you see here.

In this example we pass it the URL of a website, but you could use it to pass it an URL and some arguments for a video you would like to transcode. Or, for example, a piece of (raw) human-genome sequence you would like to do protein-folding on. See our example [here](https://github.com/nerdalize/psspred). 

**Tip**: since arguments can't have linebreaks it may be convenient to base64 encode the data before passing in, and decode it in your run script.. 
