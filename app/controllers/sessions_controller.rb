class SessionsController < ApplicationController
  def new
  end

  def create
    session[:username] = params[:username]
        redirect_to '/login'
  end

  def login
  end

  def welcome
  end

  def destroy
    session.delete :username
  end

end
