class CreateSubreddits < ActiveRecord::Migration
  def change
    create_table :subreddits do |t|
      t.integer :moderator_id, null: false
      t.string :subreddit_name, null: false
      t.text :description, null: false

      t.timestamps
    end
    add_index(:subreddits, :subreddit_name, unique: true)
  end
end

#still need to migrate
