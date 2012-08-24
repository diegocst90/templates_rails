class LibraryCategory < ActiveRecord::Base
  
  include Core::BaseModel
  
  default_scope where(:deleted=>false)
  
  has_many :libraries
  
  validates :name, :presence=>true, :uniqueness => { :case_sensitive => false }
  
  
end
