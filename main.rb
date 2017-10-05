require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require_relative 'db_config'
require_relative 'models/mood'
require_relative 'models/recipe'
require_relative 'models/like'
require_relative 'models/user'


enable :sessions

helpers do #methods in here are available in more than one area

	def current_user
		User.find_by(id: session[:user_id])
	end

	def logged_in?
		#!!current_user ---double negation will return a nil to false
		if current_user
			return true
		else
			return false
		end
	end
end


def run_db(sql)
	conn = PG.connect({ dbname: 'foodmoods'})
	conn.exec(sql)
end

get '/' do
	erb :login
end

get '/login' do
	erb :login
end
get '/create' do
  erb :create
end

post '/register' do
@user = User.new
@user.name = params[:name]
@user.email = params[:email]
@user.password = params[:password]
@user.save
redirect '/login'
end

post '/session' do

	user = User.find_by(email: params[:email])

		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect '/choice'
		else
			@message = 'incorrect email or password'
			erb :login
		end
end


delete '/session' do
	session[:user_id] = nil
	redirect '/login'
end



get '/choice' do
	@moods = Mood.all
	erb :choice
end


post '/likes' do
	@like = Like.new
	@like.recipe_id = params[:recipe_id]
	@like.user_id = params[:user_id]
	@like.recipe_url = params[:recipe_url]
	@like.image_url = params[:image_url]
	@like.recipe_name = params[:recipe_name]
	@like.save
	recipe_id = params[:recipe_id]
	redirect "/mood?color=#{params[:color]}"
end

get '/mood' do
	@likes = Like.all
	@moods = Mood.all
	@mood_name = params[:name]
	#@like_recipe_id = Like.recipe_id
	recipe_id = params[:recipe_id]
	
  color = params[:color]
  mood = Mood.find_by(color: color)
  @recipes = Recipe.where(mood: mood)

  erb :display
end


get '/favorites' do
	@likes = Like.all
	erb :favorites
end


# <%= if @count > 0 %> 
# 	<div class="counter"> <%= @count.count %> </div>
# 	<% end %>
# <% end %>





