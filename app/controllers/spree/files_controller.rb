module Spree
  class FilesController < Spree::StoreController
    before_action :load_line_item
    
    def new
      if @line_item.file
        redirect_to edit_line_item_file_path(:line_item_id => @line_item, :id => @line_item.file)
      else
        @file = Spree::File.new(:line_item => @line_item)
      end
    end

    def edit
      @file = Spree::File.find(params[:id])
    end

    def update
      @line_item.file = nil
      @line_item.save
      @file = Spree::File.create( file_params )
      redirect_to cart_path
    end

    def destroy
    end

    def create
      #puts "PARAMS"
      #puts "PARAMS"
      #puts "*#{file_params}*"
      #puts "PARAMS"
      #puts "PARAMS"
      @file = Spree::File.create( file_params )
      redirect_to cart_path
    end

    private

      def load_line_item
        @line_item = Spree::LineItem.find(params[:line_item_id])
      end

      def image_params
        params.require(:file).permit(:image)
      end

      def file_params
        file_params = image_params
        file_params.store(:line_item_id,params[:line_item_id])
        file_params
      end
  end
end