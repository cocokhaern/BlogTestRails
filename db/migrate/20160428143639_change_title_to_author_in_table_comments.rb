class ChangeTitleToAuthorInTableComments < ActiveRecord::Migration
  def change
    rename_column :comments, :title, :author
  end
end
