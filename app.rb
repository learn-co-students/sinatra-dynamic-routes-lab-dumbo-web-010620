require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @squared_number = params[:number].to_i * params[:number].to_i
    "#{@squared_number}"
  end

  get '/say/:number/:phrase' do
    @return_phrase = params[:phrase].to_s * params[:number].to_i
    "#{@return_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_string = [params[:word1].to_s, params[:word2].to_s, params[:word3].to_s, params[:word4].to_s, params[:word5].to_s].join(" ")
    "#{@word_string}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    solution = ""
    case params[:operation]
      when 'add'
        solution = (@number1 + @number2).to_s
      when 'subtract'
        solution = (@number1 - @number2).to_s
      when 'multiply'
        solution = (@number1 * @number2).to_s
      when 'divide'
        solution = (@number1/@number2).to_s
    end
  end

end