class Contact < ActiveRecord::Base
  has_many :addresses, :dependent => :destroy
  has_many :pictures, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :employers, :dependent => :destroy
  has_many :hobbies, :dependent => :destroy
  has_many :collectibles, :dependent => :destroy
  has_many :affiliations, :dependent => :destroy
  has_many :parenthoods, :dependent => :destroy
  has_many :parents, :through => :parenthoods
  has_many :childhoods, :class_name=>"Parenthood", :foreign_key=>"parent_id"
  has_many :children, :through=>:childhoods, :source=> :contact
  belongs_to :lastupdateuser, :class_name => "User"
  belongs_to :createduser, :class_name => "User"

  accepts_nested_attributes_for :addresses, :reject_if => lambda { |a| a[:street1].blank? || a[:zip].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :pictures
  accepts_nested_attributes_for :comments
  accepts_nested_attributes_for :employers
  accepts_nested_attributes_for :hobbies
  accepts_nested_attributes_for :collectibles
  accepts_nested_attributes_for :affiliations

  attr_accessible :name, :email, :phone, :creationdate, :lastupdatedate, :createduser_id, :lastupdateuser_id, :companyassociation, :addresses_attributes
end
