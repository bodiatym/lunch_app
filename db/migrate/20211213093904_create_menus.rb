class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.date :date, null: false, default: Date.today

      t.timestamps
    end
  end
end
