class ShowsController < ApplicationController


  def index
    @shows = Show.all
    respond_to do |format|
      format.html
      format.json{ render :json => @shows }
    end
  end

  def show
    show = Show.find(params[:id])
    render :json => show
  end

  def create
    show = Show.create(show_params)
    render({:json => show})
  end

  private 
  def show_params
    params.require(:show).permit([:title, :series, :description, :image, :prgrammeID])
  end

  end
