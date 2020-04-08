class PlantsController < ApplicationController
   def create
    #find the garden with the help of params
    @garden = Garden.find(params[:garden_id])
    # create the new plant with info from the params || params need to be whitlisted
    @plant = Plant.new(plant_params)
    # assign the plant to the specfic garden
    @plant.garden = @garden
    # save
    if @plant.save
      redirect_to garden_path(@garden)
    else
      render 'gardens/show'
    end
    # redirect
   end

   private

   def plant_params
    params.require(:plant).permit(:name,:image_url)
   end
end
