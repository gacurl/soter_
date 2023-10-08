class ActivitiesController < ApplicationController
  # you also need a form in this activites folder
  def index
    @activities = ["shuffleboard", "knitting", "going to the movies", "playing cards"]
  end

  def new
  end

  def edit
  end
end
