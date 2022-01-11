class AddDateToMenus < ActiveRecord::Migration[6.1]
  def change
    add_column :menus, :date, :datetime, default: Date.current, null: false
  end
end
