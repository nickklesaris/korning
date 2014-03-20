class CreateCustomers < ActiveRecord::Migration

  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :account_number, null: false
      t.timestamps
    end

      Sale.find_each do |sale|
        customer_array = sale.customer_and_account_no.split
        Customer.find_or_create_by({name: customer_array[0], account_number: customer_array[1]})
      end

  end
end
