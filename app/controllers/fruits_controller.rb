class FruitsController < ApplicationController

  def index
    @fruit = Fruit.new
    @fruits = Fruit.all
  end

  def create
    @fruit = Fruit.create(fruit_params)
    if @fruit.save
      redirect_to fruits_path
    else
      render :index
    end
  end

  def show
    @fruit = Fruit.find(params[:id])
  end

  def edit
    @fruit = Fruit.find(params[:id])
  end

  def update
    @fruit = Fruit.find(params[:id])
    @fruit.update_attributes!(fruit_params)

    redirect_to fruits_path
  end

  def destroy
    @fruit = Fruit.find(params[:id]).delete

    redirect_to fruits_path
  end

  private

  def fruit_params
    params.require(:fruit).permit(:name, :color)
  end
end