require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @reverse = params[:name].to_s.reverse
    "#{@reverse}"
  end
  get '/square/:number' do 
    @square = params[:number].to_i
    "#{@square * @square}"
  end
  get '/say/:number/:phrase' do
    @this_number = params[:number].to_i
    @this_phrase = params[:phrase]
    "#{@this_phrase}\n" * @this_number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @first = params[:word1]
    @second = params[:word2]
    @third = params[:word3]
    @fourth = params[:word4]
    @fifth = params[:word5]
    "#{@first} #{@second} #{@third} #{@fourth} #{@fifth}."
  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == add
      @number1 + @number2
    elsif @operation == subtract
      @number1 - @number2
    elsif @operation == multiply
      @number1 * @number2
    elsif @operation == divide
      @number2 / @number1
    end
  end
end


