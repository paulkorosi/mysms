class Student < ActiveRecord::Base
  attr_accessible :title, :first_name, :middle_name, :last_name, :email, :birth_date, :gender

  # allow for null values where applicable to allow for single names
  # allow for null values where applicable since you cannot legally force a user to identify their gender
  validates :title, length: { maximum: 10 }
  validates :last_name, length: { maximum: 50 }, presence: { message: "Please enter your family name" }
  validates :first_name, :middle_name, length: { maximum: 50 }
  validates :email, presence: { message: "Please enter your email address"  }, length: { maximum: 100}

  # allow for 'not stated', male, female, and other
  validates :gender, inclusion: { in: %w(m f x) }, allow_nil: true
end
