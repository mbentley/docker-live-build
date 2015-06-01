mbentley/live-build
==================

docker image for live-build
based off of stackbrew/debian:wheezy

To pull this image:
`docker pull mbentley/live-build`

Start the docker image with bash in `/opt/live`:
`docker run -it --privileged --rm -v /data/live-build:/opt/live mbentley/live-build`

By default, this image forwards drops you into a bash shell to run `live-build`

The `live-build` manual can be found at http://live.debian.net/manual/stable/html/live-manual.en.html
