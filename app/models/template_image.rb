class TemplateImage < ActiveRecord::Base
  
  include Core::BaseModel
  
  default_scope where(:deleted=>false)
  
  has_attached_file :image, :styles => Rails.application.config.paperclip_styles
  belongs_to :template
  belongs_to :template_version
  
  validates_associated :template, :if => Proc.new { |t| !t.version_mode }
  validates_associated :template_version, :if => Proc.new { |t| t.version_mode }
  
end
