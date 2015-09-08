require 'sinatra'
require 'sinatra/activerecord' if development?
require 'sinatra/flash'
require 'omniauth-github'
require 'sinatra/reloader'
require 'pry'

require_relative 'config/application'

CLIENT_ID = 'b11cf333fcefc5fcdafe'
ENV['GITHUB_KEY'] = CLIENT_ID
CLIENT_SECRET = '6c0b9f5a8c1c9e17b0adac448cb9604be5bbcdbb'
ENV['GITHUB_SECRET'] = CLIENT_SECRET

set :environment, :development

Dir['app/**/*.rb'].each { |file| require_relative file }

helpers do
  def current_user
    user_id = session[:user_id]
    @current_user ||= User.find(user_id) if user_id.present?
  end

  def signed_in?
    current_user.present?
  end
end

def set_current_user(user)
  session[:user_id] = user.id
end

def authenticate!
  unless signed_in?
    flash[:notice] = 'You need to sign in if you want to do that!'
    redirect '/'
  end
end

get '/' do
  @meetups = Meetup.all.order(:name)
  erb :index
end

get '/auth/github/callback' do
  auth = env['omniauth.auth']

  user = User.find_or_create_from_omniauth(auth)
  set_current_user(user)
  flash[:notice] = "You're now signed in as #{user.username}!"

  redirect '/'
end

get '/sign_out' do
  session[:user_id] = nil
  flash[:notice] = "You have been signed out."

  redirect '/'
end

get '/example_protected_page' do
  authenticate!
end

get '/meetup' do
  @meetup = Meetup.find_by(id: params[:id])
  erb :show_meetup
end

post '/meetup/join' do
  flash[:notice] = "Joining a meetup isn't implemented yet!"
  redirect "/meetup?id=#{params['id']}"
end

post '/create' do
  # meetup = Meetup.new(params["meetup"])
  # redirect "/meetup/?id=#{meetup.id}""
  flash[:notice] = "Creating a meetup isn't implemented yet!"
  redirect '/'
end
