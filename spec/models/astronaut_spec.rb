require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end


  describe 'methods' do
    it 'returns average age' do
    astronaut_1 = Astronaut.create(name: "Bob", age: 20, job: "Being a space hero" )
    astronaut_2 = Astronaut.create(name: "Ashley", age: 40, job: "Flying" )

    expect(Astronaut.average_age).to eq(30)
  end

  end

  describe 'relationships' do
    it {should have_many(:space_missions).through(:astronaut_space_missions)}
  end


end
