class SubredditName < ActiveRecord::Migration
  def change
    rename_column :subreddits, :subreddit_name, :name
  end
end
