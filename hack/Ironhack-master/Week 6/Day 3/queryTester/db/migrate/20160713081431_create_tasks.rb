class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :status
      t.integer :user_id
      t.boolean :active, default: false

      t.timestamps null: false
    end
  end
end
