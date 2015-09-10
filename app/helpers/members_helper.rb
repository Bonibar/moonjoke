module MembersHelper
  def is_moderator?
      if (member_id = session[:member_id])
        Member.find_by(id: session[:member_id]).moderator
      end
  end
end
