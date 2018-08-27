class User < ApplicationRecord
  has_secure_password validations: true

  # validates :password,
  #   presence: { on: :create },
  #   length: { minimum: 8, allow_blank: false }

  enum role: [:student, :teacher, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :student
  end
end
