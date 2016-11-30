class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.timestamp :event_date
      t.timestamp :event_time
      t.string :event_address
      t.integer :postal_code
      t.integer :players_req
      t.string :sports_cat
      t.string :event_name
      t.text :details
      t.string :picture

      t.timestamps
    end
  end
end
