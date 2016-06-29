module Spree
  class File < Spree::Base
    belongs_to :line_item

    #has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    has_attached_file :image, styles: { thumb: "100x77" , medium: "500x385"}
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/    

  end
end