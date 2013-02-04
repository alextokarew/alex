class RenameTypeToContentType < ActiveRecord::Migration
  def change
    rename_column :images, :type, :content_type
  end
end
