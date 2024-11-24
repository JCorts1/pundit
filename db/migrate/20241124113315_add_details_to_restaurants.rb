class AddDetailsToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :address, :string
    add_column :restaurants, :menu, :text
    add_column :restaurants, :price_range, :string
    add_column :restaurants, :opening_hours, :string
  end
end
