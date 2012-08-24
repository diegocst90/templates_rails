class Library < ActiveRecord::Base
  
  include Core::BaseModel
  
  default_scope where(:deleted=>false)
  
  has_many :libraries
  belongs_to :library_category
  
  validates :name, :presence=>true, :uniqueness => { :case_sensitive => false }  
  validates_associated :library_category
end
