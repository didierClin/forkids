class RemoveFatherNameToFamilies < ActiveRecord::Migration[5.0]
  def change
    remove_column :families, :father_name, :string
    remove_column :families, :mother_name, :string
  end
end
