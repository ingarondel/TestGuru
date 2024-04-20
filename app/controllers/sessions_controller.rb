class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_back_link root_path
    else
      flash.now[:alert] = 'Are u a Guru? Verify your Email and Password'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path, notice: "Sign out success"
  end
end
