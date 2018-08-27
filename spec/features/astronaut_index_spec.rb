require 'rails_helper'

describe 'user should see astronaut index' do
  it 'user can see all astronauts' do
    astronaut_1 = Astronaut.create(name: "Bob", age: 20, job: "Being a space hero" )
    astronaut_2 = Astronaut.create(name: "Ashley", age: 23, job: "Flying" )
    visit '/astronauts'

    expect(page).to have_content(astronaut_1.name)
    expect(page).to have_content(astronaut_2.name)
  end

  it 'user should see average age of all astronauts' do
    astronaut_1 = Astronaut.create(name: "Bob", age: 20, job: "Being a space hero" )
    astronaut_2 = Astronaut.create(name: "Ashley", age: 40, job: "Flying" )
    visit '/astronauts'

    expect(page).to have_content("Average Age: #{Astronaut.average_age}")
    expect(page).to have_content(30)

  end

  it 'user should see space missions for each astronaut' do
    astronaut_1 = Astronaut.create(name: "Bob", age: 20, job: "Being a space hero" )
    astronaut_2 = Astronaut.create(name: "Ashley", age: 40, job: "Flying" )
    space_mission_3 = astronaut_1.space_missions.create(title: "B Space Missin", trip_length: 4)
    space_mission_1=  astronaut_1.space_missions.create(title: " A Space Mission name 1", trip_length: 23 )
    space_mission_2 = astronaut_2.space_missions.create(title: "Space Mission name 2", trip_length: 4)
    visit astronauts_path

    expect(page).to have_content(space_mission_1.title)
    expect(page).to have_content(space_mission_3.title)
    expect(page).to have_content(space_mission_2.title)
  end

  it 'user should see total time in space' do
    astronaut_1 = Astronaut.create(name: "Bob", age: 20, job: "Being a space hero" )
    space_mission_1 = astronaut_1.space_missions.create(title: "B Space Missin", trip_length: 4)
    space_mission_2=  astronaut_1.space_missions.create(title: " A Space Mission name 1", trip_length: 23 )
    expect(page).to have_content("Total Time in Space: 27")
  end








end
