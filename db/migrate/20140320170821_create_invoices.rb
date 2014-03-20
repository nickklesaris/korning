class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :invoice_no
      t.integer :sale_id

      t.timestamps
    end
    Sale.find_each do |sale|
      Invoice.find_or_create_by(invoice_no: sale.invoice_no) do |invoice|
        invoice.sale_id = sale.id
      end
    end
  end
end
