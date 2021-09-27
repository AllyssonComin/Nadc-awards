class CreatePlays < ActiveRecord::Migration[6.0]
  def change
    create_table :plays do |t|
      t.string :game
      t.string :category
      t.string :video
      t.string :title
      t.string :comment
      t.references :player
      t.references :user

      t.timestamps
    end
  end
end
