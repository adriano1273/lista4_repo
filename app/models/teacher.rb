class Teacher < ApplicationRecord
    has_many :students, dependent: :destroy
    has_one :Language, dependent: :destroy

    validates :name, :email, :birth, presence: true
    validates_date :birth, on_or_before: lambda {Date.current}
end
