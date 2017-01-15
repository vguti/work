class AddColumnDeadlineToProducts < ActiveRecord::Migration
  def change
    add_column :products, :deadline, :string
  end
end
