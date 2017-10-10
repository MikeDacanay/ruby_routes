class HelloController < ApplicationController
  def index
  	render "hello/index"
  end

  def say
  	render "hello/say"
  end

  def say_joe
  	render "hello/joe"
  end

  def say_michael
  	redirect_to "/hello/say_joe"
  end
end
