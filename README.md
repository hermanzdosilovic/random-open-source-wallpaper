# Random Open Source Wallpaper

Sinatra app for getting random open source wallpaper every time you visit [rosw.ddsn.net](http://rosw.ddns.net)

## Wallpapers

I copied wallpapers from some Ubuntu [packages](http://packages.ubuntu.com/trusty/ubuntu-wallpapers).

If you want to add some wallpapers to [rosw.ddsn.net](http://rosw.ddns.net) do the following:

1. Fork this repository.

2. Make sure your wallpaper is not already in this repository. All wallpapers are located in [public/images](https://github.com/hermanzdosilovic/random-open-source-wallpaper/tree/master/public/images) folder.

3. Copy wallpaper in `public/images` folder. Make sure to use nonexistent name.

4. Add wallpaper name (including extension) at the end of the `@wallpapers` array in [wallpaper.rb](https://github.com/hermanzdosilovic/random-open-source-wallpaper/blob/master/lib/wallpaper.rb) file.

5. Commit and push your changes

6. Create a new pull request

## Some Ideas for Future

* Adding tags to wallpapers
* Returning wallpapers in specific size
* Download wallpapers every time you visit page

