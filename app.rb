require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

    get '/reversename/:name' do
        @a = params[:name]
        @a.reverse
    end
    
    get '/square/:number' do
        @a = params[:number].to_i
        (@a*@a).to_s
    end
    
    get '/say/:number/:phrase' do
        
        ok = ""
        
        params[:number].to_i.times do 
            ok += params[:phrase]
        end
        
        ok
        
    end
    
    
    get '/say/:word1/:word2/:word3/:word4/:word5' do
        "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end
    
    get "/:operation/:number1/:number2" do
        num1 = params[:number1].to_i
        num2 = params[:number2].to_i
        op = params[:operation]
        
        
        #  binding.pry
        a = 0
        if op == "add"
            a = (num1 + num2).to_s
            
        elsif op == "subtract"
            a = (num1 - num2).to_s
            
        elsif op == "multiply"
            a = (num1 * num2).to_s
            
        else
            a = (num1 / num2).to_s
            
        end
        
        # a = num1 + num2.to_s
        # b = num1 - num2.to_s
        # c = num1 * num2.to_s
        # d = num1 / num2.to_s
        
    end
    
end