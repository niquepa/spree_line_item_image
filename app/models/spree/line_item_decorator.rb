module Spree
  LineItem.class_eval do
    has_many :files, :dependent => :destroy
  end
end