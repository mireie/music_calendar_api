class Venue < ApplicationRecord
  has_many :shows, dependent: :destroy
  [:name, :street_address, :city, :zip_code, :website].each do |field|
    validates field, presence: true
  end
end