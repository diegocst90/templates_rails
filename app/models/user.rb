class User < ActiveRecord::Base
  
  include Core::BaseModel
  
  default_scope where(:deleted=>false)
  
  has_many :comments
  has_attached_file :avatar, :styles => Rails.application.config.paperclip_styles
  belongs_to :author
  
  validates :name, :presence=>{:if => Proc.new { |t| t.unlinked? }}
  validates :lastname, :presence=>{:if => Proc.new { |t| t.unlinked? }}
  validates :email, :presence=>{:if => Proc.new { |t| t.unlinked? }}
  
  def unlinked?
    author_id.blank?
  end
end
