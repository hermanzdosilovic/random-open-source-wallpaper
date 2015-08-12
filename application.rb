require 'bundler/setup'
require 'sinatra'

$LOAD_PATH.unshift("lib/").uniq!

require 'wallpaper'

@@redirect = true

get '/' do
  if @@redirect
    @@redirect = false
    redirect '/random'
  else
    @@redirect = true
    send_file Wallpaper.random
  end
end

get '/random' do
  @@redirect = false
  redirect '/'
end

get '*' do
  redirect 'https://github.com/hermanzdosilovic/random-open-source-wallpaper'
end
