class AddNewColumsToProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :surname, :string, default: 'default'
    add_column :profiles, :address, :string, default: 'default'
    add_column :profiles, :phone, :integer, default: 0
  end
end
