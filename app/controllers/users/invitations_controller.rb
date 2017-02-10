class Users::InvitationsController < Devise::InvitationsController
  def update
#    user = User.find_by_invitation_token(params[:user][:invitation_token], true)
    User.accept_invitation!(:invitation_token => params[:user][:invitation_token],
                            :password         => params[:user][:password])
#    bypass_sign_in(user)
#    redirect_to '/profiles/new'
    redirect_to '/'
  end
end