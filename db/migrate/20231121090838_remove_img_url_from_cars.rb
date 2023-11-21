class RemoveImgUrlFromCars < ActiveRecord::Migration[7.0]
  def change
    remove_column :cars, :img_url, :string
  end
end
