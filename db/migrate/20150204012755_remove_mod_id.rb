class RemoveModId < ActiveRecord::Migration
  def change
    remove_column :subreddits, :moderator_id
  end
end
