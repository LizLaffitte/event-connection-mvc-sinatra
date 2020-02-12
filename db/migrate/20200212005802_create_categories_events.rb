class CreateCategoriesEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :categories_events do |t|
      t.integer :category_id
      t.integer :event_id
    end
  end
end
