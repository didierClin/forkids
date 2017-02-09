class AddProfileIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :profile_id, :integer
    update <<-SQL.squish
      update users set profile_id = (
        select id from profiles where profiles.user_id = users.id
        )
      where exists (
        select id from profiles where profiles.user_id = users.id
        )
      SQL
    remove_column :profiles, :user_id
  end
end
