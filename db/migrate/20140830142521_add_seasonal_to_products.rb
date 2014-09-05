class AddSeasonalToProducts < ActiveRecord::Migration
  def change
    add_column :products, :seasonal, :boolean
  end
end
