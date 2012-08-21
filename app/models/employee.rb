class Employee < ActiveRecord::Base
  attr_accessible :departmentname, :email, :name, :occupation, :salary,:status,:user_id,:department_id,:gender,:profile_status,:image	
  
  belongs_to :user
  
  mount_uploader :image,ImageUploader
end
