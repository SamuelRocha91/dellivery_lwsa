class ApplicationController < ActionController::Base
    def listing
      @products = Product.includes([:store])
    end
end
