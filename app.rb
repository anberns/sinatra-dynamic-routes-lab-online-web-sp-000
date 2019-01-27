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
      @count -= 1 
    end
    @str
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @str = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do 
    @num1 = params[:number1].to_i
    case params[:operation]
      when "add"
        return params[:number1]
end