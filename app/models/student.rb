class Student < ActiveRecord::Base
  validates_presence_of :name, :gender, :student_class, :status
end
