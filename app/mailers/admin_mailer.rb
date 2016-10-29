class AdminMailer < ApplicationMailer
  def new_user_waiting_for_approval(user)
    @user = user

    mail to: User.first.email, subject: 'User waiting to be approved'
  end
end
