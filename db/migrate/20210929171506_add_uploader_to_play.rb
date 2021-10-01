class AddUploaderToPlay < ActiveRecord::Migration[6.0]
  def change
    add_column :plays, :uploader, :string
  end
end
