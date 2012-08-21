class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :occupation
      t.float :salary
      t.string :email

      t.timestamps
    end
  end
end
