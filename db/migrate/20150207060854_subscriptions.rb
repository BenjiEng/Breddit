class Subscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :sub_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
