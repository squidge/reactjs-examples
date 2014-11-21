# $ gem install sinatra
# $ ruby server.rb

require 'sinatra'
require 'json'

get '/' do
  send_file 'hello-reactjs.html'
end

get '/data' do
  content_type :json

  [
    {id: 1, author: "Pete Hunt", text: "This is one comment from server"},
    {id: 2, author: "Jordan Walke", text: "This is *another* comment from server"}
  ].to_json
end
