class Project < ActiveRecord::Base
  belongs_to :project_status

  validates :name, :presence => true
  
end
