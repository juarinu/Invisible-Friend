class List < ActiveRecord::Base
  attr_accessible :name, :owner_id, :invitations_attributes
  
  has_many :invitations, :dependent => :destroy
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"

  accepts_nested_attributes_for :invitations,
    :allow_destroy => true,
    :reject_if => proc {|a| a["guest_id"].blank?}
    
  validates_presence_of :name
end
