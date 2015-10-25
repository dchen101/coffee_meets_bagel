class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.references :photo
      t.references :user
      t.timestamps null: false
    end
  end
end
