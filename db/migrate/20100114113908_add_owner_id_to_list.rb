class AddOwnerIdToList < ActiveRecord::Migration
  def self.up
    add_column :lists, :owner_id, :integer
    
    List.all.each { |l| l.update_attribute(:owner_id, 1) }
  end

  def self.down
    remove_column :lists, :owner_id
  end
end
