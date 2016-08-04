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
    response = RestClient.post(
                  'http://localhost:5000/api/login',
                  {
                    username: 'priyank@redshift.com',
                    password: '!abcd1234'
                  }
                )
    @token = JSON.parse(response)["token"]
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, alert: "Successfully logged out"
  end
end
