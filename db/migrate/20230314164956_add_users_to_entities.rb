class AddUsersToEntities < ActiveRecord::Migration[7.0]
  def change
    add_reference :entities, :users, null: false, foreign_key: true
  end
end
