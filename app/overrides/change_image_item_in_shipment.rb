Deface::Override.new(:virtual_path => "spree/checkout/_delivery",
                     :replace_contents  => "[data-hook='shipment_item_image']",
                     :partial           => "spree/checkout/line_item_file",
                     :name              => "shipment_item_file")