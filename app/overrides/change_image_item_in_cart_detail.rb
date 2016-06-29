Deface::Override.new(:virtual_path      => "spree/orders/_line_item",
                     :replace_contents  => "[data-hook='cart_item_image']",
                     :partial           => "spree/orders/line_item_file",
                     :name              => "item_file")