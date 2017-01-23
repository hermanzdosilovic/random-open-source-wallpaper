# Random Open Source Wallpaper

Every time you visit https://wallpaper.dosilovic.com you get random open source wallpaper.

## Wallpapers

I copied wallpapers from some Ubuntu [packages](http://packages.ubuntu.com/trusty/ubuntu-wallpapers).

If you want to add some wallpapers to https://wallpaper.dosilovic.com/ do the following:

1. Fork this repository.

2. Make sure your wallpaper is not already in this repository. All wallpapers are located in [images](https://github.com/hermanzdosilovic/random-open-source-wallpaper/tree/master/images) folder.

3. Copy wallpaper in `images` folder. Make sure to use nonexistent name.

4. Commit and push your changes

5. Create a new pull request

# Docker

Production image for this application is available on [Docker Hub](https://hub.docker.com/r/hermanzdosilovic/random-open-source-wallpaper/).

Run it on **non** ARM device:
```
$ docker run -p 8080:8080 hermanzdosilovic/random-open-source-wallpaper
```

Run it on ARM device (e.q. Raspberry Pi):
```
$ docker run -p 8080:8080 hermanzdosilovic/random-open-source-wallpaper:rpi
```

## Raspberry Pi

I have tested it with Raspberry Pi 3.
