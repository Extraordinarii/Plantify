class SessionsController < ApplicationController
  def new 
  end 
  def create_account
  owner = Owner.create(username: params[:person][:username], password: params[:person][:username])
  
  redirect_to owner_path(owner)
  end

  def create 
    owner = Owner.find_by(username: params[:owner][:username])
    if owner && owner.authenticate(params[:owner][:password])
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