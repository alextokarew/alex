class AddTitleToProject < ActiveRecord::Migration
  def change
    change_table :projects do |t|
      t.string :title
      t.remove_timestamps
    end
  end
end
