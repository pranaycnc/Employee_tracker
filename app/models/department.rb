class Department < ActiveRecord::Base
  attr_accessible :description, :name
  
  belongs_to:employee
end
