require 'bundler/setup'
require 'sinatra'

$LOAD_PATH.unshift("lib/").uniq!

require 'wallpaper'

get '/' do
  cache_control :public, :no_store
  send_file Wallpaper.random
end

get '*' do
  redirect 'https://github.com/hermanzdosilovic/random-open-source-wallpaper'
end
