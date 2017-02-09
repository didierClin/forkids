class Family < ApplicationRecord
  # validates :father_name,:mother_name, presence: true, length: { minimum: 2 }
  has_and_belongs_to_many :profiles
end
