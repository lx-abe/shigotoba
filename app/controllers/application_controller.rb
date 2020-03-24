# frozen_string_literal: true

# ApplicationController
class ApplicationController < ActionController::Base
  def current_user
    User.find(session[:user_id])
  end
end
