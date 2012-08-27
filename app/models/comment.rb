class Comment < ActiveRecord::Base
  
  include Core::BaseModel
  
  default_scope where(:deleted=>false)
  
  belongs_to :user
  belongs_to :author
  belongs_to :template
  belongs_to :template_version
  
  validates :comment, :presence=>true, :uniqueness => { :scope => [:user_id, :created_at] }
  validates :rate, :presence=>true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :which_table, :presence=>true, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 2 }
  validates_associated :user
  validates_associated :author, :if => Proc.new { |t| t.which_table == t.author_mode }
  validates_associated :template, :if => Proc.new { |t| t.which_table == t.template_mode }
  validates_associated :template_version, :if => Proc.new { |t| t.which_table == t.template_version_mode }
  
  def self.template_version_mode
    0
  end
  
  def self.template_mode
    1
  end
  
  def self.author_mode
    2
  end
  
end
