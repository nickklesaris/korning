class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.timestamps
    end
    Sale.find_each do |sale|
      employee_array = sale.employee.split
      Employee.find_or_create_by({first_name: employee_array[0], last_name: employee_array[1], email: employee_array[2]})
    end
  end
end
