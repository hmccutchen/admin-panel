class Course < ApplicationRecord
  has_many :cohorts, dependent: :destroy
  has_and_belongs_to_many :students
end
