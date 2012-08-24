class TemplateVersionLibraryVersion < ActiveRecord::Base
  
  include Core::BaseModel
  
  belongs_to :template_version
  belongs_to :library_version
  
  validates_associated :template_version
  validates_associated :library_version
  
  #Overriding BaseModel "delete" function
  def delete
    self.destroy
  end
  
end
