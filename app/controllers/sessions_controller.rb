# frozen_string_literal: true

# ログイン
class SessionsController < ApplicationController
  def create
    @user = User.find_by(email: session_params[:email])
    if @user&.authenticate(session_params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: t('.success')
    else
      flash.now[:danger] = t('.error')
      render 'new'
    end
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
