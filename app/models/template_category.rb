class TemplateCategory < ActiveRecord::Base
  
  include Core::BaseModel
  
  default_scope where(:deleted=>false)
  
  has_many :templates
  
  validates :name, :presence=>true, :uniqueness => { :case_sensitive => false }
  
  
end
