class AddRoleToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :role, :string, default: ::User::BASIC, null: false
    add_index :users, :role
  end
end
