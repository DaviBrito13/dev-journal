class Users::SessionsController < Devise::SessionsController

  def create
    self.resource = warden.authenticate!(auth_options)
    if resource
      sign_in(resource_name, resource)
      flash[:notice] = "Signed in successfully."
      redirect_to root_path
    else
      flash[:alert] = "Invalid email or password."
      render :new
    end
  end
  
end