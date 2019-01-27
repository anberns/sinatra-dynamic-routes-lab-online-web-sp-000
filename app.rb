require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name].reverse
  end
  
  get '/square/:number' do 
    @square = params[:number].to_i * params[:number].to_i
    @square.to_s 
  end
  
  get '/say/:number/:phrase' do
    @str = ""
    @count = params[:number].to_i
    while @count > 0 
      @str += params[:phrase]
    end
    @str
  end
end