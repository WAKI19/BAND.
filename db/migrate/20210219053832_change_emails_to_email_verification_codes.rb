class ChangeEmailsToEmailVerificationCodes < ActiveRecord::Migration[6.1]
  def change
    rename_table :emails, :email_verification_codes
  end
end
