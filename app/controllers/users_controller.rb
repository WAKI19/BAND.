class UsersController < ApplicationController
  protect_from_forgery

  def signin
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = "ユーザー登録が完了しました"
    else
      flash[:danger] = "ユーザー登録に失敗しました"
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :nickname, :password)
  end
end
