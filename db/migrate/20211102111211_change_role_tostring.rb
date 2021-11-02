class ChangeRoleTostring < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :role, :string, default: ::User::BASIC
  end
end
