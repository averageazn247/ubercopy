class StaticPagesController < ApplicationController
  def home
    @users = Pickup.all
@hash = Gmaps4rails.build_markers(@users) do |user, marker|
  marker.lat user.end_lat
  marker.lng user.end_long
end
  end
  def help
  end

  def about
  end
  def index
    
    @users=User.all
    
  end
  def use
    @user=User.find(params[:id])
  end
end
