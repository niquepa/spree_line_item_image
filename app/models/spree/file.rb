module Spree
  class File < Spree::Base
    belongs_to :line_item

    #has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    has_attached_file :image, styles: { thumb: "100x77" , medium: "500x385"}
    #validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/tiff image/png application/pdf)
    #validates_attachment :image, :content_type => {:content_type => %w(image/jpeg image/jpg image/tiff image/png application/pdf)}    

    before_post_process :skip_for_pdf

    def skip_for_pdf
      ! %w(application/pdf).include?(image_content_type)
    end

  end
end