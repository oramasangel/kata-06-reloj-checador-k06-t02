class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.integer :num_employee
      t.integer :private_num
      t.string :name
      t.string :email
      t.string :position
      t.boolean :status

      t.timestamps
    end
  end
end
