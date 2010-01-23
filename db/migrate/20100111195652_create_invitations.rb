class CreateInvitations < ActiveRecord::Migration
  def self.up
    create_table :invitations do |t|
      t.integer :list_id
      t.integer :guest_id

      t.timestamps
    end
  end

  def self.down
    drop_table :invitations
  end
end
