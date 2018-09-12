class Cohort < ApplicationRecord
  belongs_to :course
  has_one :teacher, dependent: :destroy
  has_many :students, dependent: :destroy
  accepts_nested_attributes_for :teacher
end
