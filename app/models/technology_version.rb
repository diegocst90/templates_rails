class TechnologyVersion < ActiveRecord::Base
  
  include Core::BaseModel
  
  default_scope where(:deleted=>false)
  
  belongs_to :technology
  has_many :template_version
  
  validates :name, :presence=>true, :uniqueness => { :case_sensitive => false, :scope=>[:technology_id] }
  validates_associated :technology
end
