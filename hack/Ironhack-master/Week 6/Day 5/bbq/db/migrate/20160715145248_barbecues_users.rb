class BarbecuesUsers < ActiveRecord::Migration
  def change
  	create_table :barbecues_users do |t|
  		t.references :barbecue, index: true
  		t.references :user, index: true
  	end
  end
end
