class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :link
      t.string :embed_code

      t.timestamps
    end
  end
end
