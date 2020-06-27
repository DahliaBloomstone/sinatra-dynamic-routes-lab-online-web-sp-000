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
    
    end


  get "/multiply/:num1/:num2" do
    @num1 = params[:num1].to_f
    @num2 = params[:num2].to_f
    return "#{@num1 * @num2}"
  end
end
