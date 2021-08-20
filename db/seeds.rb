Show.destroy_all
Review.destroy_all

class Seed

  def self.begin
    
    seed = Seed.new
    seed.generate_shows
    seed.generate_venues
  end

  def generate_venues
    50.times do |i|
      name = Faker::Hipster.words(number: 2, spaces_allowed: true)
      Venue.create!(
        name: "The #{name.join(" ").titleize}",
        street_address: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state,
        zip_code: Faker::Address.post_code,
        website: "https://music-calendar-api.herokuapp.com/example-venue/#{name.join('-')}"
      )
    end

  end
  
  def generate_shows
    @venues = Venue.all
    @venues.each do |venue|
      name = Faker::Hipster.words(spaces_allowed: true)
      is_all_ages = "false"
      artist4 = ""
      if rand(3) == 1
        is_all_ages = "true"
        artist4 = Faker::Hipster.words(spaces_allowed: true).join(" ").titleize
      end
      rand(1..50).times do
        Show.create!(
          title: name.join(" ").titleize,
          artist1: Faker::Hipster.words(spaces_allowed: true).join(" ").titleize,
          artist2: Faker::Hipster.words(spaces_allowed: true).join(" ").titleize,
          artist3: Faker::Hipster.words(spaces_allowed: true).join(" ").titleize,
          artist4: artist4,
          details: Faker::Hipster.paragraph(random_sentences_to_add: 5),
          showtime: Faker::Time.between_dates(from: Date.today - 14, to: Date.today + 90, period: :evening),
          price: rand(0.00..100.00),
          all_ages: is_all_ages,
          url: "#{venue.website}/#{title.join('-')}",
          venue_id: venue.id
        )
        puts "#{show.title} show created at #{venue.name}!"
      end
    end
    p "Created #{Show.count} shows."
  end
end

Seed.begin