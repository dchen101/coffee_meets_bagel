class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :user
      t.timestamps null: false

    end
  end
end
