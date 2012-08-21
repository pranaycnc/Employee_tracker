class AdminController < ApplicationController

  include Employeenew

  def index
    @employee = Employee.all
    
    
    p "module based record"
    
    
  end
  
  def employee_status
    @emp = Employee.find(params[:id])
    if @emp.status == "active"
    
    Employee.update(params[:id],{:status=>"inactive"} )
    else
        Employee.update(params[:id],{:status=> "active"} )
        
     end    
     redirect_to admin_index_path
     
  end
  
  def show
    @emp = Employee.find(params[:id])
    
  end
  
  def download
     send_file "#{Rails.root}/public/quick_openrp.tar.gz"
  end
  
  
  
  def adddept
  
   @department=Department.all
   p @department
   respond_to do |format|
     format.js
   end 
     
   def update_dept
   
   	@dept = Department.find(params[:dept]) 
   	
   	respond_to do |format|
   	@emp_update = Employee.update({:department_id => @dept.id},{:id=> @dept.employee.id})
   	  format.js
   	end
   redirect_to admin_index_path
   
  end  
  
 end
  
end #controller ends
