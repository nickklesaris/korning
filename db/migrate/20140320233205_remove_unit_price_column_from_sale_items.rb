class RemoveUnitPriceColumnFromSaleItems < ActiveRecord::Migration
  def up
    remove_column :sale_items, :unit_price
  end

  def down
    add_column :sale_items, :unit_price, :integer, default: 0
  end
end
