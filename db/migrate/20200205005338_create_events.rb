class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :start_datetime
      t.string :end_datetime
      t.string :location
      t.string :details
      t.integer :user_id
    end
  end
end
