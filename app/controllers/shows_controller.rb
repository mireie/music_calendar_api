class ShowsController < ApplicationController

  def index
    @shows = Show.page(1)
    json_response(@shows)
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
        message: "This show has been updated successfully."
      }
    end
  end

  def destroy 
    @show = Show.find(params[:id])
    if @show.destroy!
      render status:200, json: {
        message: "This show has been successfully destroyed."
      }
    end
  end

  private

end