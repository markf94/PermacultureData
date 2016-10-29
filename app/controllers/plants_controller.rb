class PlantsController < ApplicationController
  # before action finds the current plant
  before_action :find_plant, only: [:show, :edit, :update, :destroy, :upvote]
  before_action :authenticate_user!, except: [:index, :show]

  def index #holds all the plants in reverse chronological order
    #@plants = Plant.all.order("created_at DESC")
    #@plants = Plant.search(params[:search])

    #@plants = Plant.all.order("created_at DESC")
  if params[:search]
    @plants = Plant.search(params[:search]).order("created_at DESC")
  else
    #@plants = Plant.all.order('created_at DESC')
  end

  end

  def create
    @plant = current_user.plants.build(plant_params)

    if @plant.save
      redirect_to @plant, notice: "Successfully created new Plant"
    else
      render 'new'
    end
  end

  def new
    @plant = current_user.plants.build
  end

  def edit
  end

  def update
    if @plant.update(plant_params)
      redirect_to @plant, notice: "Plant was successfully updated"
    else
      render 'edit'
    end
  end

  def destroy
    @plant.destroy
    redirect_to root_path
  end

  def show
  end

  def upvote
    @plant.upvote_by current_user
    redirect_to :back
  end

  private # private method below

  def plant_params #define plant parameters
    params.require(:plant).permit(:commonname, :description, :image, :species)
  end

  def find_plant
    @plant = Plant.find(params[:id])
  end



end
