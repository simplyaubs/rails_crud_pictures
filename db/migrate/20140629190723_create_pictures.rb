class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :content
      t.string :size
    end
  end
end
