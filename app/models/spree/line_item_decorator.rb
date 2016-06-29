module Spree
  LineItem.class_eval do
    has_one :file, :dependent => :destroy
  end
end