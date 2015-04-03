class CreateAttenders < ActiveRecord::Migration
  def change
    create_table :attenders do |t|
      t.integer :user_id
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
