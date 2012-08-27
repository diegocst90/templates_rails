class Author < ActiveRecord::Base
  
  include Core::BaseModel
  
  default_scope where(:deleted=>false)
  
  has_attached_file :avatar, :styles => Rails.application.config.paperclip_styles
  has_many :templates
  has_many :comments
  has_one :user
  
  validates :name, :presence=>true, :uniqueness => { :case_sensitive => false, :scope=>[:lastname, :email] }
  validates :lastname, :presence=>true
  validates :email, :presence=>true
  validates :views, :presence=>true, :numericality => { :greater_than_or_equal_to => 0, :only_integer => true }
  validates :rate, :presence=>true, :numericality => { :greater_than_or_equal_to => 0 }
  
end
