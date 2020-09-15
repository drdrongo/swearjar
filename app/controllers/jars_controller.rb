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
    @jar.increment!(:current_amount, params[:jar][:coin_value].to_i)
    redirect_to jar_path(@jar)
  end
end
