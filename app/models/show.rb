class Show < ApplicationRecord
  [:title, :artist1, :showtime, :location, :details, :price].each do |field|
    validates field, presence: true
  end
  scope :upcoming, -> {where("showtime > ?", Date.today)}
end