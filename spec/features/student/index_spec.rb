require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do

  it 'can see a list of all student with name, age, and house' do

    @student_1 = Student.create!(name: 'Casseopia Black',
                                 age: 14,
                                 house: 'Slytherin')


    visit "/students"

    expect(page).to have_content(@student_1.name)
    expect(page).to have_content(@student_1.age)
    expect(page).to have_content(@student_1.house)
  end

  it 'can see average age of all students' do

  @student_1 = Student.create!(name: 'Casseopia Black',
                               age: 14,
                               house: 'Slytherin')

  @student_2 = Student.create!(name: 'Harry Potter',
                                age: 15,
                                house: 'Griffindor')

  visit '/students'

  expect(page).to have_content("Average Age: 14.5")
  end


end
