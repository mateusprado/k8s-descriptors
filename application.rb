require 'sinatra'
require 'socket'
require 'yaml'

set :bind, "0.0.0.0"

config = YAML.load_file('/config/config.yml')

get '/healthcheck' do
  'live'
end

get '/' do
  'k8s-101 web app'
end

get '/pod' do
  Socket.gethostname
end

get '/version' do
  config['version']
end