require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do

  it 'can see a list of all courses with number of students enrolled' do

    potions = Course.create!(name: "Potions")
    dark_arts = Course.create!(name: "Defense Against the Dark Arts")
    herbology = Course.create!(name: "Herbology")

     cassopia = Student.create!(name: 'Casseopia Black',
                                 age: 14,
                                 house: 'Slytherin')

     harry = Student.create!(name: 'Harry Potter',
                          age: 14,
                          house: 'Griffindor')

      ron = Student.create!(name: 'Ron Weasley',
                             age: 14,
                             house: 'Griffindor')


    potions.students << cassopia
    potions.students << ron
    potions.students << harry

    visit '/courses'

    expect(page).to have_content(potions.name)
    expect(page). to have_content("Potions: 3")

  end
end
