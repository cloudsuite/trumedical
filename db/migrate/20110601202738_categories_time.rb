class CategoriesTime < ActiveRecord::Migration
  def self.up
     Category.all.each do |s|
          s.created_at = Time.now
          s.updated_at = Time.now
          s.save
      end
  end

  def self.down
  end
end
