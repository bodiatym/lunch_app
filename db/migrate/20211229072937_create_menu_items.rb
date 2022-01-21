class CreateMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_items do |t|
      t.references :menu, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
