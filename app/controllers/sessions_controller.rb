class SessionsController < ApplicationController
  def create
    member = Member.find_by(email: params[:session][:email].downcase)
    if member
      session[:member_id] = member.id
      redirect_to member
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    if is_logged?
      session.delete(:member_id)
      flash.now[:info] = "You successfuly log out."
    end
    redirect_to root_url
  end
end
