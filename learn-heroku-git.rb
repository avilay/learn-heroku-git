$: << File.expand_path(File.dirname(__FILE__) + "/components")
require 'sinatra'
require 'sinatra/reloader'

enable :sessions

before do
  $logger = logger
end

get '/' do
  @page_heading = 'Home Page'
  @home_active = 'active'
  erb :index
end