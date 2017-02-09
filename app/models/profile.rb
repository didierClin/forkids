class Profile < ApplicationRecord
  has_and_belongs_to_many :families
  belongs_to :user

  scope :family_members, ->(user) {joins(:families).where(families: { id: user.profile.families.first.id })}

  # gender
#  enum gender: {male:1, female:2}
  def self.gender_attributes_for_select
    {"monsieur" => 1, "madame" => 2}
#    genders.map do |gender, _|
#      # i18n see stackoverflow.com/questions/22827270/how-to-use-i18n-with-rails-4-enum
#    end
  end

end
