require 'bundler/setup'
require 'sinatra'

require_relative 'wallpaper'

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
