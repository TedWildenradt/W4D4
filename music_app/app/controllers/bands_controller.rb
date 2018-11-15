class BandsController < ApplicationController

  def index
    @bands = Band.all
    render :index
  end

  def create
    @band = Band.new(band_params)
  end

  def new
    @band = Band.new
  end

  def show
    @band = Band.find_by(name: params[:name])
    render :show
  end

  def edit
    @band = Band.find_by(name: params[:name])
    render :edit
  end

  def update
    @band = Band.find_by(name: params[:name])

  end

  def destroy

  end

  private
  def band_params
    params.require(:band).permit(:name)
  end
end
