class AddColumnUserIdToBid < ActiveRecord::Migration
  def change
    add_column :bids, :user_id, :string
  end
end
