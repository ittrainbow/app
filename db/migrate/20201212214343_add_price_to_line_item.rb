class AddPriceToLineItem < ActiveRecord::Migration[6.0]
  def self.up
    add_column :line_items, :price, :decimal
    LineItem.all.each do |li|
      li.price = li.product.price
    end
  end

  def self.down
    remove_column :line_items, :price
  end
end
