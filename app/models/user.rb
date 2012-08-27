class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  include Core::BaseModel
  
  default_scope where(:deleted=>false)
  
  has_many :comments
  has_attached_file :avatar, :styles => Rails.application.config.paperclip_styles
  belongs_to :author
  belongs_to :profile
  
  validates :name, :presence=>{:if => Proc.new { |t| t.unlinked? }}, :uniqueness => { :case_sensitive=>false, :scope => [:lastname, :email] }
  validates :lastname, :presence=>{:if => Proc.new { |t| t.unlinked? }}
  validates :email, :presence=>{:if => Proc.new { |t| t.unlinked? }}
  validates_associated :profile
  
  def unlinked?
    author_id.blank?
  end
end
