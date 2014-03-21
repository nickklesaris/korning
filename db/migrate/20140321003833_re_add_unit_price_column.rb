class ReAddUnitPriceColumn < ActiveRecord::Migration

  def up
    add_column :sale_items, :unit_price, :decimal, default: 0.00
  end

  def down
    remove_column :sale_items, :unit_price
  end

end
