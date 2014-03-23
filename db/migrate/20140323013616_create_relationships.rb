class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :watcher_id
      t.integer :watched_id

      t.timestamps
    end
  end
end
