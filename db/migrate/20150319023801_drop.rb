class Drop < ActiveRecord::Migration
  def change
    drop_table :post_votes
  end
end
