class Cohort < ApplicationRecord
  belongs_to :course
  has_one :teacher
  has_many :students
  accepts_nested_attributes_for :teacher
end
