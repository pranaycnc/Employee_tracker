class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  require 'employeenew'


  
  def after_sign_in_path_for(resource)
     if current_user.role != "admin"  
     
        "/employees/new"
      
       
    else
     "/admin/index"
    end
  end

  
  
  # this method is to identify user role
  def admin_role
  p "methoddddddd"
  
   p current_user.role
    #@user=User.find_by_id(current_user.id)
     # if @user.role != "admin"  

      #  redirect_to "admin/index"
      #else
      
      # p "<<<<<<<<<<<<<"
  
     # end


  end
  
end
