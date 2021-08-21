module Api::V1
  class VenuesController < ApplicationController
    def index
      @venues = Venue.page(params[:page])
      json_response(@venues)
    end

    def show
      @venue = Venue.find(params[:id])
      json_response(@venue)
    end

    def create
      @venue = Venue.create!(venue_params)
      json_response(@venue, :created)
    end

    def update
      @venue = Venue.find(params[:id])
      name = @venue.name
      if @venue.update!(venue_params)
        render status: 200, json: {
                 message: "#{name} has been updated successfully.",
               }
      end
    end

    def destroy
      @venue = Venue.find(params[:id])
      name = @venue.name
      if @venue.destroy!
        render status: 200, json: {
                 message: "#{name} has been successfully destroyed.",
               }
      end
    end

    private

    def venue_params
      params.permit(:name, :street_address, :city, :state, :zip_code, :website)
    end
  end
end


