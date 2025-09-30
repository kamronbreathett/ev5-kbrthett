# frozen_string_literal: true

# == Schema Information
#
# Table name: teams
#
#  id         :bigint           not null, primary key
#  home_city  :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Team < ApplicationRecord
  has_many(
    :players,
    inverse_of:  :team,
    foreign_key: 'player_id',
    class_name:  'Player',
    dependent:   :destroy
  )

  validates :name, presence: true
  validates :home_city, presence: true
end
