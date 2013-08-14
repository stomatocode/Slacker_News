# ----------main/landing page below

get '/' do



  erb :index
end

get '/main_list' do

  @posts = Post.all

  erb :main_list
end

# ---------Login below

post '/login' do
  @user = User.find(username: params[:username], password: params[:password])

  erb :main_list
end

post '/new_user' do
  User.create(params)

  erb :main_list
end

# ----------post creation below

get '/create_post' do

  erb :post
end

post '/new_post' do 

  erb :main_list
end

