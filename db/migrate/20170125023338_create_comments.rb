#I had an issue with getting your app to run locally because one of your migrations,
#I think this one, has an issue with the user relation - try to reclone your repo
#in a new directory and set up your db to reproduce
class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :message, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
