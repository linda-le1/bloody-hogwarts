class Student <ApplicationRecord
  has_many :student_courses
  has_many :courses, through: :student_courses

  validates_presence_of :name, :age, :house

  def count_average_age
    students.average(:age)
  end

end
