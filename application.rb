require 'bundler/setup'
require 'sinatra'

$LOAD_PATH.unshift("lib/").uniq!

require 'wallpaper'

before do
  cache_control :public, :no_store
end

get '/' do
  send_file Wallpaper.random
end

get '/download' do
  wallpaper = Wallpaper.random
  attachment wallpaper
  send_file wallpaper
end

get '*' do
  redirect 'https://github.com/hermanzdosilovic/random-open-source-wallpaper'
end
