class Language < ApplicationRecord
  belongs_to :teacher

  validates :name, :teacher_id, presence: true
  validates :teacher_id, uniqueness: true
end
