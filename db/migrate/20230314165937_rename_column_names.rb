class RenameColumnNames < ActiveRecord::Migration[7.0]
  def change
    rename_column :entities, :users_id, :user_id
    rename_column :groups, :users_id, :user_id
    rename_column :relations, :entities_id, :entity_id
    rename_column :relations, :groups_id, :group_id
  end
end
