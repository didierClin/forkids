class ChangeGender2ToProfile < ActiveRecord::Migration[5.0]
  def up
    change_column :profiles, :gender, 'integer USING CAST(gender as integer)'
  end
  def down
    change_column :profiles, :gender, :string
  end      
end
