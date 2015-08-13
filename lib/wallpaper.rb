module Wallpaper
  def self.random
    @wallpapers ||= Dir["public/images/*"]
    @wallpapers.sample
  end
end
