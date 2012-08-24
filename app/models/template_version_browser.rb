class TemplateVersionBrowser < ActiveRecord::Base
  
  include Core::BaseModel
  
  belongs_to :template_version
  belongs_to :browser
  
  validates_associated :template_version
  validates_associated :browser
  
  #Overriding BaseModel "delete" function
  def delete
    self.destroy
  end
  
end
