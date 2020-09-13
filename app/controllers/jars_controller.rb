class JarsController < ApplicationController
  def show
    @jar = Jar.find(params[:id])
    @coins = Coin.where(jar: @jar)
  end

  def index
    @jars = Jar.all
  end

  def update
    @jar = Jar.find(params[:id])
    @coin = Coin.find(params[:coin_id])
    @jar.increment!(:current_amount, @coin.value)
  end
end
