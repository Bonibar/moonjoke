class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :url
      t.boolean :accepted
      t.date :upload_date
      t.integer :category
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
