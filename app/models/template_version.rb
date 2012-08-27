class TemplateVersion < ActiveRecord::Base
  
  include Core::BaseModel
  
  default_scope where(:deleted=>false)
  
  has_many :template_version_browsers
  has_many :browsers, :through => :template_version_browsers
  has_many :template_version_library_versions
  has_many :library_versions, :through => :template_version_library_versions
  has_many :comments
  has_many :template_images
  belongs_to :template
  belongs_to :technology_version
  
  validates :name, :presence=>true
  validates :version, :presence=>true, :uniqueness => { :case_sensitive => false }
  validates :path_or_url, :presence=>true
  validates :views, :presence=>true, :numericality => { :greater_than_or_equal_to => 0, :only_integer => true }
  validates :rate, :presence=>true, :numericality => { :greater_than_or_equal_to => 0 }
  validates_associated :template
  validates_associated :technology_version
  
  
end
