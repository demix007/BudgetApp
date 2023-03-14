class AddUsersToGroups < ActiveRecord::Migration[7.0]
  def change
    add_reference :groups, :users, null: false, foreign_key: true
  end
end
