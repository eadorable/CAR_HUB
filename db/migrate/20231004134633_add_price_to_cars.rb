class AddPriceToCars < ActiveRecord::Migration[7.0]
  def change
    add_monetize :cars, :price, currency: { present: false }
  end
end
