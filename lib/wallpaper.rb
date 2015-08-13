module Wallpaper
  @wallpapers = Dir["public/images/*"]
  def self.random
    @wallpapers.sample
  end
end
