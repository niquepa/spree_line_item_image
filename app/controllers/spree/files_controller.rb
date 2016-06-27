module Spree
  class FilesController < Spree::StoreController
    before_action :load_line_item
    
    def new
      @file = Spree::File.new(:line_item => @line_item)
    end

    def edit
      @file = Spree::File.find(params[:id])
    end

    def update
    end

    def destroy
    end

    def create
      puts "PARAMS"
      puts "PARAMS"
      puts "*#{file_params}*"
      puts "PARAMS"
      puts "PARAMS"
      @file = Spree::File.create( file_params )
      #@file.line_item = @line_item
      #@file.save
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
      #def order_params
      #  if params[:file]
      #    params[:file].permit()
      #  else
      #    {}
      #  end
      #end    
  end
end