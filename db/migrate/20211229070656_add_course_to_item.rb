class AddCourseToItem < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :course, :string, null: false
    add_index :items, :course
  end
end
