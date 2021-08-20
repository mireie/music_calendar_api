class Show < ApplicationRecord
  [:title, :artist1, :showtime, :location, :details, :price].each do |field|
    validates field, presence: true
  end
  scope :upcoming, -> {where("showtime >= ?", DateTime.now)}
  scope :next_week, -> {where("showtime >= ? && showtime <= ?", DateTime.now, DateTime.now+7)}
  scope :past, -> {where("showtime < ?", DateTime.now)}
end