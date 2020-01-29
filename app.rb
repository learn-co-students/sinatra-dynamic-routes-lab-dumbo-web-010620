require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reversed_name = params[:name].to_s.reverse
  end

  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i
    @squared.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
     
    answer = " "
    case @operation
      when  'add'
       answer = (@number1 + @number2).to_s
      when  'subtract'
        answer = (@number1 - @number2).to_s
      when 'divide'
        answer = (@number1 / @number2).to_s
      when 'multiply'
        answer = (@number1 * @number2).to_s
      end

  end




end