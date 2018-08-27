class SpaceMission < ApplicationRecord
  has_many :astronaut_space_missons
  has_many :astronauts, through: :astronaut_space_missons

  def total_time_in_space
    sum(:trip_length)
  end
end
