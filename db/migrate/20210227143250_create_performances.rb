class CreatePerformances < ActiveRecord::Migration[6.1]
  def change
    create_table :performances do |t|
      t.integer :user_id
      t.string :title
      t.text :text
      t.string :video

      t.timestamps
    end
  end
end
