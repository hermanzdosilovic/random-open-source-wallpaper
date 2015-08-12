require 'bundler/setup'
require 'sinatra'

require_relative 'wallpaper'

@@redirect = true

get '/' do
  @@redirect = false
  redirect (0...50).map { ('a'..'z').to_a[rand(26)] }.join
end

get '*' do
  if @@redirect
    redirect '/'
  else
    @@redirect = true
    send_file Wallpaper.random
  end
end
