class ChangeEventsDate < ActiveRecord::Migration[5.2]
  def up
    change_table :events do |t|
      t.change :date, :string
    end
  end

  def down
    change_table :events do |t|
      t.change :date, :date
    end
  end
end
