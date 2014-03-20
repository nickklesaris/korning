class PopulateSalesItems < ActiveRecord::Migration
  def change

    Sale.find_each do |sale|
      SaleItem.find_or_create_by(sale_id: sale.id) do |sale_item| # Be careful not to clash iteration_names when nesting do's
        sale_item.product_id = sale.product_id
        sale_item.unit_sold = sale.units_sold
        sale_item.unit_price = (sale.sale_amount/sale.units_sold)
        #sale_item.save
      end
    end
  end
end
