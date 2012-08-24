class LibraryVersion < ActiveRecord::Base
  
  include Core::BaseModel
  
  default_scope where(:deleted=>false)
  
  has_many :template_version_library_versions
  has_many :template_versions, :through => :template_version_library_versions
  belongs_to :library
  
  validates :name, :presence=>true, :uniqueness => { :case_sensitive => false }
  validates_associated :library
end
