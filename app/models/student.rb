class Student < ApplicationRecord
  belongs_to :teacher

  validates :name, :registration, :email, :birth, presence: true
  validates :registration, uniqueness: true
  validates_length_of :registration, is: 9
  validates_date :birth, on_or_before: lambda {Date.current}

end
