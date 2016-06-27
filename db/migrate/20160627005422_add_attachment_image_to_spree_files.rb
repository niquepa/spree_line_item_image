class AddAttachmentImageToSpreeFiles < ActiveRecord::Migration
  def self.up
    change_table :spree_files do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :spree_files, :image
  end
end
