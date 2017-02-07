class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :lastname
      t.string :firstname
      t.datetime :birth_date
      t.integer :gender
      t.string :street
      t.string :city
      t.string :postcode
      t.string :country

      t.timestamps
    end
  end
end
