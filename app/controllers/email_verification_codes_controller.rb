class EmailVerificationCodesController < ApplicationController
  protect_from_forgery

  require 'securerandom'

  def new
    @verification_code = EmailVerificationCode.new
  end

  def create
    @verification_code = EmailVerificationCode.new(email_verification_code_params)
    @verification_code.verification_code = create_verification_code
    if @verification_code.save
      render('verification.html.erb')
    end
  end

  def verification
    @verification_code = EmailVerificationCode.find_by(email_address: params[:email_address])
    if @verification_code.verification_code == params[:verification_code].to_s
      render('/users/signin.html.erb')
    else
      @error_message = "エラー：認証コードが違います"
      render('verification.html.erb')
    end
  end

  private

  def create_verification_code
    verification_code = "0"
    7.times do
      num = SecureRandom.random_number(10).to_s
      verification_code = verification_code + num
    end
    return verification_code
  end

  def email_verification_code_params
    params.require(:email_verification_code).permit(:email_address,:verification_code)
  end
  
end
