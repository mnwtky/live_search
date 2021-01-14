class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title,          null: false
      t.integer :price,         null: false
      t.string :address,        null: false
      t.datetime :event_date,   null: false
      t.datetime :opening_time, null: false
      t.datetime :start_time,   null: false
      t.datetime :end_time,     null: false
      t.text :ticket_reservation
      t.text :info
      t.references :user,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
