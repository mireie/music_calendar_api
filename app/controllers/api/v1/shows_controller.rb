module Api::V1
  class ShowsController < ApplicationController
    before_action :set_venue

    def index
      if @venue
        json_response(@venue.shows.page)
      else
        json_response(Show.all.page)
      end
    end

    def show
      @show = Show.find(params[:id])
      json_response(@show)
    end

    def create
      @show = Show.create!(show_params)
      json_response(@show, :created)
    end

    def update
      @show = Show.find(params[:id])
      if @show.update!(show_params)
        render status: 200, json: {
                 message: "This show has been updated successfully.",
               }
      end
    end

    def destroy
      @show = Show.find(params[:id])
      if @show.destroy!
        render status: 200, json: {
                 message: "This show has been successfully destroyed.",
               }
      end
    end

    def upcoming
      @shows = Show.all.upcoming.page(params[:page])
      json_response(@shows, 200)
    end

    def next_week
      @shows = Show.all.next_week.page(params[:page])
      json_response(@shows, 200)
    end

    def past
      @shows = Show.all.past.page(params[:page])
      json_response(@shows, 200)
    end

    def all_ages
      @shows = Show.all.all_ages.page(params[:page])
      json_response(@shows, 200)
    end

    private

    def set_venue
      @venue = @venue.shows.find_by!(id: params[:id]) if @venue
    end
  end
end
