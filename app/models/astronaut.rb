class Astronaut < ApplicationRecord
  has_many :space_missions
  validates_presence_of :name, :age, :job

  def self.average_age
    Astronaut.average(:age)
  end
end
