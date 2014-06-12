class FruitsController < ApplicationController

  def index
    @fruit = Fruit.new
    @fruits = Fruit.all
  end

  def create
    @fruit = Fruit.create(fruits_params)
    if @fruit.save
      redirect_to fruits_path
    else
      render :index
    end
  end

  private

  def fruits_params
    params.require(:fruit).permit(:name, :color)
  end
end