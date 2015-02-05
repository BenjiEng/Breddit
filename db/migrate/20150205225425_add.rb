class Add < ActiveRecord::Migration
  def change
    add_column :posts, :sub_id, :integer, null: false
  end
end
