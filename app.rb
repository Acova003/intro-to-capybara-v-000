class Application < Sinatra::Base
  # Write your code here!
  
  get '/' do 
    erb :index
  end 
  
  get '/greet' do 
    @user = User.new 
    @user.name = params[:user_name]
    erb :greet
  end 

end