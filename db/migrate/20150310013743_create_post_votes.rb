class CreatePostVotes < ActiveRecord::Migration
  def change
    create_table :post_votes do |t|
      t.integer :post_id, null:false
      t.integer :user_id, null: false
      t.integer :count, default: 0
      t.string  :type

      t.timestamps
    end
  end
end
