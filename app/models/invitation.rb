class Invitation < ActiveRecord::Base
  attr_accessible :list_id, :guest_id
  
  belongs_to :list
  belongs_to :guest, :class_name => "User", :foreign_key => "guest_id"
end
