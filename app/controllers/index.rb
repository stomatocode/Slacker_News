# ----------main/posts below

get '/' do

  erb :index
end

get '/main_list' do

  @posts = Post.all

  erb :main_list
end

get '/show/:post_id' do

  @post = Post.find_by_id(params['post_id'])
  @comments = Comment.where(post_id: 'post_id')

  erb :show
end

# ---------Login below

post '/login' do
  @user = User.find_by_username(params['user']['username'])

  if @user.password == params['user']['password']
    p "logged in"
    p session
    session["user_id"] = @user.id
    p session
    @posts = Post.all
    erb :main_list
  else
    redirect '/'
  end


end

post '/new_user' do
  User.create(params['user'])

  @posts = Post.all

  erb :main_list
end

# ----------post creation below

get '/create_post' do

  @user = User.find(session['user_id'])

  erb :post
end

post '/new_post' do 
  p params
  Post.create(params['post'])

  @posts = Post.all
  erb :main_list
end

# -------comments below

get '/comment/:post_id' do 

  @post = Post.find_by_id(params['post_id'])

  erb :comment
end

post '/create_comment' do

  Comment.create(params['comment'])

  @posts = Post.all
  erb :main_list
end







