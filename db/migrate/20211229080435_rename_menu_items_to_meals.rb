class RenameMenuItemsToMeals < ActiveRecord::Migration[6.1]
  def change
    rename_table :menu_items, :meals
  end
end
