class AddColumnProductIdToBid < ActiveRecord::Migration
  def change
    add_column :bids, :product_id, :string
  end
end
