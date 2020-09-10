class JarsController < ApplicationController
  def show
    @jar = Jar.find(params[:id])
    @coins = Coin.where(jar: @jar)
  end

  def index
    @jars = Jar.all
  end
end
