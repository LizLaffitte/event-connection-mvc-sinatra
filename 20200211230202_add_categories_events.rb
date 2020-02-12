class AddCategoriesEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :categories, :string
  end
end
