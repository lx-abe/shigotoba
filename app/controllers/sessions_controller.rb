# frozen_string_literal: true

# ログイン
class SessionsController < ApplicationController
  def create
    @user = User.find_by!(email: session_params[:email])
  rescue StandardError
    flash.now[:danger] = t('.invalid', attribute: User.human_attribute_name(:email))
    render 'new'
  else
    if @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: t('.login')
    else
      flash.now[:danger] = t('.invalid', attribute: User.human_attribute_name(:password))
      render 'new'
    end
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
