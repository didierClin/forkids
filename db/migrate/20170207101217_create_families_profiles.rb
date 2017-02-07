class CreateFamiliesProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :families_profiles, id: false do |t|
      t.belongs_to :family
      t.belongs_to :profile
    end
  end
end
