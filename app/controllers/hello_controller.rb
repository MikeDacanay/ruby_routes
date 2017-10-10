class HelloController < ApplicationController
  def index
  	render "hello/index"
  end

  def say
  	render "hello/say"
  end
end
