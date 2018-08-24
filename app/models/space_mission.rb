class SpaceMission < ApplicationRecord
  belongs_to :astronaut through: :astronaut_space_missons
end
end
