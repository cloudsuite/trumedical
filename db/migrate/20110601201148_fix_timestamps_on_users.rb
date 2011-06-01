class FixTimestampsOnUsers < ActiveRecord::Migration
  def self.up
     def self.up
          User.all.each do |s|
          	  s.created_at = Time.now
          	  s.updated_at = Time.now
          	  s.save
          	  end
       end
  end

  def self.down
  end
end
