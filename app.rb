require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
    @name = params[:name] 
    @name.reverse 
  end 
  
  get '/square/:number' do 
    @number = params[:number] 
    @squared = @number.to_i * @number.to_i 
    @squared.to_s 
  end 
  
  get '/say/:number/:phrase' do 
    @number = params[:number] 
    @phrase = params[:phrase] 
    @multiple = @number.to_i 
    @phrase*@multiple 
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1] 
    @word2 = params[:word2] 
    @word3 = params[:word3] 
    @word4 = params[:word4] 
    @word5 = params[:word5] 
    "#{@word1} "+ "#{@word2} " + "#{@word3} " + "#{@word4} " + "#{@word5}" + "."
  end 
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation] 
    @number1 = params[:number1] 
    @number2 = params[:number2]
    if @operation == "add" 
      @sum = @number1.to_i + @number2.to_i
      @sum.to_s 
    elsif @operation == "subtract"
      @difference = @number1.to_i- @number2.to_i
      @difference.to_s 
    elsif @operation == "multiply" 
      @product = @number1.to_i * @number2.to_i 
      @product.to_s 
    elsif @operation == "divide" 
      @quotient = @number1.to_i / @number2.to_i 
      @quotient.to_s 
    end 
  end 

end