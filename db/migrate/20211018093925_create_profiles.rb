class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :surname,              null: false, default: ""
      t.string :address,              null: false, default: ""
      t.string :phone,              null: false, default: ""
      
      t.timestamps
    end
  end
end
