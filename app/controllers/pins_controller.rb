class PinsController < ApplicationController
  # before action finds the current pin
  before_action :find_pin, only: [:show, :edit, :update, :destroy, :upvote]
  before_action :authenticate_user!, except: [:index, :show]

  def index #holds all the pins in reverse chronological order
    #@pins = Pin.all.order("created_at DESC")
    #@pins = Pin.search(params[:search])

    #@pins = Pin.all.order("created_at DESC")
  if params[:search]
    @pins = Pin.search(params[:search]).order("created_at DESC")
  else
    #@pins = Pin.all.order('created_at DESC')
  end

  end

  def create
    @pin = current_user.pins.build(pin_params)

    if @pin.save
      redirect_to @pin, notice: "Successfully created new Pin"
    else
      render 'new'
    end
  end

  def new
    @pin = current_user.pins.build
  end

  def edit
  end

  def update
    if @pin.update(pin_params)
      redirect_to @pin, notice: "Pin was successfully updated"
    else
      render 'edit'
    end
  end

  def destroy
    @pin.destroy
    redirect_to root_path
  end

  def show
  end

  def upvote
    @pin.upvote_by current_user
    redirect_to :back
  end

  private # private method below

  def pin_params #define pin parameters and permit only title and description
    params.require(:pin).permit(:commonname, :description, :image, :species, :edible)
  end

  def find_pin
    @pin = Pin.find(params[:id])
  end



end
