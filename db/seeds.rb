# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# University of Memphis

team1 = Team.create!(
  name:      'University of Memphis',
  home_city: 'Memphis, TN'
)

Player.create!(
  first_name: 'D.J.',
  last_name:  'Jeffries',
  position:   'F',
  team:       team1
)

Player.create!(
  first_name: 'Jayden',
  last_name:  'Hardaway',
  position:   'G',
  team:       team1
)

Player.create!(
  first_name: 'Alex',
  last_name:  'Lomax',
  position:   'G',
  team:       team1
)

# Duke University

team2 = Team.create!(
  name:      'Duke University',
  home_city: 'Durham, NC'
)

Player.create!(
  first_name: 'Wendell',
  last_name:  'Moore, Jr.',
  position:   'F',
  team:       team2
)

Player.create!(
  first_name: 'Jalen',
  last_name:  'Johnson',
  position:   'F',
  team:       team2
)

Player.create!(
  first_name: 'DJ',
  last_name:  'Steward',
  position:   'G',
  team:       team2
)

# Michigan State University

team3 = Team.create!(
  name:      'Michigan State University',
  home_city: 'East Lansing, MI'
)

Player.create!(
  first_name: 'Aaron',
  last_name:  'Henry',
  position:   'F',
  team:       team3
)

Player.create!(
  first_name: 'Joshua',
  last_name:  'Langford',
  position:   'G',
  team:       team3
)

Player.create!(
  first_name: 'Rocket',
  last_name:  'Watts',
  position:   'G',
  team:       team3
)
