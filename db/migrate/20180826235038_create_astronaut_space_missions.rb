class CreateAstronautSpaceMissions < ActiveRecord::Migration[5.1]
  def change
    create_table :astronaut_space_missions do |t|
     t.belongs_to :astronaut, index: true
     t.belongs_to :space_mission, index: true

      t.timestamps
    end
  end
end
