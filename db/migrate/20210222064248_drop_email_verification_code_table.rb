class DropEmailVerificationCodeTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :email_verification_codes
  end
end