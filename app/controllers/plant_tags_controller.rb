class PlantTagsController < ApplicationController
  def new
    #one from params
    @plant = Plant.find(params[:plant_id])
    #empty one to be created
    @plant_tag = PlantTag.new
  end

  def create
    #get the plant from params!
    @plant = Plant.find(params[:plant_id])
    #get the tag from params!
    @tags = Tag.where(params[:plant_tag]['tag'])
    #@tag = Tag.find(params[:plant_tag]['tag'])
    #create a new instance of PlantTag
    @tags.each do |tag|
      plant_tag = PlantTag.new(tag: tag, plant: @plant)
      #save new PlantTag
      plant_tag.save
    end
    #redirect
      redirect_to garden_path(@plant.garden), notice: "Tag Added!"
  end
end
