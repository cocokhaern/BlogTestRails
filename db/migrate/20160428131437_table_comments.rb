class TableComments < ActiveRecord::Migration
  def change
    create_table :comments
    add_column :comments, :title, :string
    add_column :comments, :content, :text
    add_column :comments, :article_id, :integer
    add_index :comments, :article_id
  end
end
