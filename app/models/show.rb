class Show < ApplicationRecord
  belongs_to :venue
  [:title, :artist1, :showtime, :venue_id, :details, :price].each do |field|
    validates field, presence: true
  end
  scope :upcoming, -> {where("showtime >= ?", DateTime.now)}
  scope :next_week, -> {upcoming.where("showtime <= ?", DateTime.now+7)}
  scope :past, -> {where("showtime < ?", DateTime.now)}
  scope :all_ages, -> {where("all_ages = true")}
end