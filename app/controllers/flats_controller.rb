class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save!
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :description, :address, :price)
  end

end