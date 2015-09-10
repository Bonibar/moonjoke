class AddMediaTypeToContents < ActiveRecord::Migration
  def change
    add_column :contents, :media_type, :integer
  end
end
