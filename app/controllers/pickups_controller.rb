class PickupsController < ApplicationController
  def new
    @pickup=Pickup.new
       @ip=request.location 
  end
   
 
    def create 
       @pickup = Pickup.new(params[:pickup])
      @ip=request.remote_ip
    respond_to do |format|
      if @pickup.save
        format.html { redirect_to @pickup, notice: 'Pick up request was successfully booked.' }
        format.json { render json: @pickup, status: :created, location: @pickup }
        
      else
        format.html { render action: "new" }
        format.json { render json: @pickup.errors, status: :unprocessable_entity }
      end
    end
  end
  def edit
    @pickup=Pickup.find(params[:id])
  end
  def show
        @pickup=Pickup.find(params[:id])
  end
  def update
       @pickup=Pickup.find(params[:id])

    respond_to do |format|
      if @pickup.update_attributes(params[:pickup])
        format.html { redirect_to @pickup, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pickup.errors, status: :unprocessable_entity }
      end
    end
  end
  def index
    @pickups=Pickup.all
    
  end
end
