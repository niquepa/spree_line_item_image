module Spree
  class Files < ActiveRecord::Base

    belongs_to :line_item
  end
end