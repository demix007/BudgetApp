class AddGroupsToRelations < ActiveRecord::Migration[7.0]
  def change
    add_reference :relations, :groups, null: false, foreign_key: true
  end
end
