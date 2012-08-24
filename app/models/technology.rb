class Technology < ActiveRecord::Base
  
  include Core::BaseModel
  
  default_scope where(:deleted=>false)
  
  has_many :technology_versions
  
  validates :name, :presence=>true, :uniqueness => { :case_sensitive => false }
  
end
