class CreateFilesTable < ActiveRecord::Migration
  def change
    create_table :spree_files do |t|
      t.belongs_to :line_item      
      t.timestamps null: false
    end
  end
end
