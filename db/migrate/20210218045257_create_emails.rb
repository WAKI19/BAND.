class CreateEmails < ActiveRecord::Migration[6.1]
  def change
    create_table :emails do |t|
      t.string :email_address
      t.string :passcode

      t.timestamps
    end
  end
end
