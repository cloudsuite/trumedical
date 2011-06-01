class RemoveColumnFromParts < ActiveRecord::Migration
  def self.up
     remove_column :products, :long_description
  end

  def self.down
  end
end
