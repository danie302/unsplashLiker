class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.string :photo_id
      t.references :user, foreing_key: true
      t.timestamps
    end
  end
end
