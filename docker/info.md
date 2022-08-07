# Docker for emu8086 on Ubuntu

## Part 0 - Download

* Install docker locally
* Download [emu8086](https://emu8086-microprocessor-emulator.en.softonic.com/download) and extract it to the current directory

## Part I - Create base docker

* Build the base docker, may take some time (~10 mins) : `docker build . -t emu8086_setup`
* Run the docker :
```bash
docker run --rm -it --name emu8086_setup_container --net=host -e DISPLAY -v /tmp/.X11-unix emu8086_setup
```
* You may need to run `xhost +` on your host
* Click next-next-next ...
* If you have serial number register using the serial number
* Keep the emulator open, do not `exit` the contatiner !

## Part II - Create final docker image

* Open a new terminal and commit the container : `docker commit emu8086_setup_container emu8086`
* You may `exit` the docker

## Part III - Run 

* Add `--volume` to the command, to map your drive :
```bash
docker run --rm -it --net=host -e DISPLAY -v /tmp/.X11-unix emu8086
```