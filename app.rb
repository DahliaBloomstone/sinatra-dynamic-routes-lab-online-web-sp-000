require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
    end

  get "/square/:number" do
    @number = params[:number]
    (@number^2).to_i
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    "#{@phrase}.num.times"
    end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

  end



  get "/operation/:number1/:number2" do
    @num1 = params[:number1].to_f
    @num2 = params[:number2].to_f
    return "#{@num1 * @num2}"
  end
end
