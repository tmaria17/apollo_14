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
    visit '/astronauts'

    expect(page).to have_content("Average Age: #{Astronaut.average_age}")
    expect(page).to have_content(30)

  end




end
