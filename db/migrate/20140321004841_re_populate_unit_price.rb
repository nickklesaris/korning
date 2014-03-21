class RePopulateUnitPrice < ActiveRecord::Migration
  def up

    Sale.all.each do |sale|
      SaleItem.where(sale_id: sale.id).each do |sale_item| # Be careful not to clash iteration_names when nesting do's
        sale_item.unit_price = (sale.sale_amount/sale.units_sold)
        sale_item.save
      end
    end
  end

  def down

  end
end
