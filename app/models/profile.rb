class Profile < ApplicationRecord
  has_and_belongs_to_many :families
  belongs_to :user

  scope :family_members, ->(user) {joins(:families).where(families: { id: user.profile.families.first.id })}
end
