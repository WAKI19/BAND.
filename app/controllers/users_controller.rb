class UsersController < ApplicationController
  protect_from_forgery

  def signin
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "ユーザー登録が完了しました"
      log_in(@user)
      redirect_to root_path
    else
      flash[:notice] = "ユーザー登録に失敗しました"
      render action :signin
    end
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:email, :nickname, :password)
  end
end
