class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update, :destroy]
  def index
    @animals = Animal.order(:found_on)
  end

  def show

  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.create(animal_params)
    redirect_to animals_path
  end

  def edit

  end

  def update
    @animal.update(animal_params)
    redirect_to animal_path(@animal)
  end

  def destroy
    @animal.destroy
    redirect_to animals_path
  end

  private
  def set_animal
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:name, :address, :category, :found_on)
  end
end
