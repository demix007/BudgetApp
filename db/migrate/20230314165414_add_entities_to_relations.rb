class AddEntitiesToRelations < ActiveRecord::Migration[7.0]
  def change
    add_reference :relations, :entities, null: false, foreign_key: true
  end
end
