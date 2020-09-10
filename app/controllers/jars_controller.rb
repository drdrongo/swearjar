class JarsController < ApplicationController
  def show
    @jar = Jar.find(params[:id])
  end
end
