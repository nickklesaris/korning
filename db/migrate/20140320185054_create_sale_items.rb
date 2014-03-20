class CreateSaleItems < ActiveRecord::Migration
  def change
    create_table :sale_items do |t|
      t.integer :product_id
      t.integer :sale_id
      t.integer :unit_sold
      t.integer :unit_price

      t.timestamps
    end

    # Sale.find_each do |sale|
    #   SaleItem.find_or_create_by(sale_id: sale.id) do |product|
    #     sale_item.product_id = sale.product_id
    #     sale_item.unit_sold = sale.unit_sold
    #     sale_item.unit_price = (sale.sale_amount/sale.units_sold)
    #     sale_item.save
    #   end
    # end
  end
end
