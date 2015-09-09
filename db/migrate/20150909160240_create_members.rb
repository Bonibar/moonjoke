class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :pseudo
      t.string :email
      t.string :gravatar
      t.integer :age
      t.boolean :moderator

      t.timestamps null: false
    end
  end
end
