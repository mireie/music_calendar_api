# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Show.destroy_all

class Seed

  def self.begin
    
    seed = Seed.new
    seed.generate_shows
  end

  def generate_shows
    100.times do |i|
      is_all_ages = "false"
      artist4 = ""
      if rand(3) == 1
        is_all_ages = "true"
        artist4 = Faker::Hipster.words(spaces_allowed: true).join(" ").titleize
      end
 
      show = Show.create!(
        title: Faker::Hipster.words(spaces_allowed: true).join(" ").titleize,
        artist1: Faker::Hipster.words(spaces_allowed: true).join(" ").titleize,
        artist2: Faker::Hipster.words(spaces_allowed: true).join(" ").titleize,
        artist3: Faker::Hipster.words(spaces_allowed: true).join(" ").titleize,
        artist4: artist4,
        details: Faker::Hipster.paragraph(random_sentences_to_add: 5),
        showtime: Faker::Time.between_dates(from: Date.today - 14, to: Date.today + 90, period: :evening),
        location: "The #{Faker::Hipster.words(number: 2, spaces_allowed: true).join(" ").titleize}",
        price: rand(0.00..100.00),
        all_ages: is_all_ages
      )
      puts "#{show.title} show created!"
    end
    p "Created #{Show.count} shows."
  end
end

Seed.begin