class RenamePasscodeColumnToEmailVerificationCodes < ActiveRecord::Migration[6.1]
  def change
    rename_column :email_verification_codes, :passcode, :verification_code
  end
end
