class WelcomeController < ApplicationController
  def index
  end

  def set_destination
    @destination = Destination.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def destination_params
    params.require(:destination).permit(:city, :country, :latitude, :longitude)
  end

end
