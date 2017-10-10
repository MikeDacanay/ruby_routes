class HelloController < ApplicationController

    def index
  		render :text => "Hello CodingDojo"
    end

    def hello
    	render text: "saying Hello!"
    end

    def say_someone
  		if params[:name] == "joe"
	  		render text: "Saying Hello #{params[:name]}!"
	  		puts params[:name]
	  		puts params
	 	else
	    	puts params[:name]
	 		redirect_to "/say/hello/joe"
	 	end
    end

	def times
		unless session[:times]
			session[:times] = 1
			render text: "#{session[:times]}"
		else
			session[:times] += 1
			render text: "#{session[:times]}"
		end	
	end
end
