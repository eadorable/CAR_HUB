class AddImgUrlToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :img_url, :string
  end
end
