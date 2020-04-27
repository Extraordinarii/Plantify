class SessionsController < ApplicationController
  def new
  end

  def create 
    
    owner = Owner.find_by(username: params[:owners][:username])
    if owner && owner.authenticate(params[:owners][:password])
      session[:owner_id] = owner.id
      redirect_to owner_path(owner)
   end
  end
  def login
  end

  def welcome
  end

  def destroy
    session[:owner_id] = nil
    redirect_to '/login'
  end
end