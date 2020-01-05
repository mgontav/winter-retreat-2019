# frozen_string_literal: true

# Base controller
class ApplicationController < ActionController::Base
  private

  def authenticate_and_check_active!
    if current_user.nil?
      flash[:alert] = 'You have to sign in'
      redirect_to new_user_session_path
    elsif !current_user.active?
      sign_out
      flash[:alert] = 'Your account is not active'
      redirect_to new_user_session_path
    end
  end
end
