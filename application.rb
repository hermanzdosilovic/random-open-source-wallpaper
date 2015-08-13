require 'bundler/setup'
require 'sinatra'
require 'lib/wallpaper'

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
