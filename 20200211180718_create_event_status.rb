class CreateEventStatus < ActiveRecord::Migration[5.2]
  def change
    create_table :event_statuses do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :status
    end
  end
end
