class Template < ActiveRecord::Base
  
  include Core::BaseModel
  
  default_scope where(:deleted=>false)
    
  belongs_to :author
  belongs_to :template_category
  has_many :template_version
  has_many :comments
  
  validates :name, :presence=>true
  validates :views, :presence=>true, :numericality => { :greater_than_or_equal_to => 0, :only_integer => true }
  validates :rate, :presence=>true, :numericality => { :greater_than_or_equal_to => 0 }
  validates_associated :author
  validates_associated :template_category
  
end
