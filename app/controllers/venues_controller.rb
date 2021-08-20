class VenuesController < ApplicationController

  def index
    @venues = Venue.page(params[:page])
    json_response(@venues)
  end

  def venue
    @venue = Venue.find(params[:id])
    json_response(@venue)
  end

  def create
    @venue = Venue.create!(venue_params)
    json_response(@venue, :created)
  end

  def update
    @venue = Venue.find(params[:id])
    if @venue.update!(venue_params)
      render status: 200, json: {
        message: "This venue has been updated successfully."
      }
    end
  end

  def destroy 
    @venue = Venue.find(params[:id])
    if @venue.destroy!
      render status:200, json: {
        message: "This venue has been successfully destroyed."
      }
    end
  end

  private

end