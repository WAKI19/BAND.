class AddColumnToPerformances < ActiveRecord::Migration[6.1]
  def change
    add_column :performances, :video, :string
  end
end
