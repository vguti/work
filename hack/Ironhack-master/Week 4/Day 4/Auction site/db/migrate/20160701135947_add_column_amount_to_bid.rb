class AddColumnAmountToBid < ActiveRecord::Migration
  def change
    add_column :bids, :amount, :string
  end
end
