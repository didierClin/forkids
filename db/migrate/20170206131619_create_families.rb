class CreateFamilies < ActiveRecord::Migration[5.0]
  def change
    create_table :families do |t|
      t.string :father_name
      t.string :mother_name

      t.timestamps
    end
  end
end
