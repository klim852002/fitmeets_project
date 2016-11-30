class CreateJoinTableUserEvent < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users_events, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :event, index: true
      # t.index [:user_id, :event_id]
      # t.index [:event_id, :user_id]
    end
  end
end
