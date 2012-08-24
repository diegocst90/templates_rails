class Browser < ActiveRecord::Base
  
  include Core::BaseModel
  
  default_scope where(:deleted=>false)
  
  has_many :template_version_browsers
  has_many :template_versions, :through => :template_version_browsers
  
  validates :name, :presence=>true, :uniqueness=>{ :case_sensitive => false }
  
end
