class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :tms_part_number
      t.references :category
      t.string :title
      t.string :description
      t.string :features
      t.string :options
      t.decimal :retail_price
      t.decimal :web_price
      t.string :image_url
      t.string :vendor
      t.string :vendor_sku
      t.string :sammons_category
      t.string :sammons_part_number
      t.string :sold_in_units

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
