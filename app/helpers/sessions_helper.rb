module SessionsHelper
  def current_member
    if (member_id = session[:member_id])
      @current_member ||= Member.find_by(id: session[:member_id])
    end
  end

  def is_logged?
    !current_member.nil?
  end
end
