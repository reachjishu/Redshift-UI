require 'net/http'
require 'open-uri'
require 'uri'
require 'rest_client'
require 'JSON'

class SessionsController < ApplicationController
  def new
    render 'new'
  end

  def create
    session_service = SessionsServices.new
    @token = session_service.create
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, alert: "Successfully logged out"
  end
end
