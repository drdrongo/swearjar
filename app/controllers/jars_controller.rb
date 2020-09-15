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

  def new
    @jar = Jar.new
  end

  def create
    @jar = Jar.new(jar_params)

    
    @jar.user = current_user
    if @jar.save
      Coin.create(
        value: 100,
        jar: @jar
      )
      redirect_to jar_path(@jar)
    else
      render :new
    end
  end

  private

  def jar_params
    params.require(:jar).permit(:current_amount, :end_amount, :goal)
  end
end
