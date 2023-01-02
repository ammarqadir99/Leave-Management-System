class ApplicationController < ActionController::API
    def redirect_user
        redirect_to '/404'
      end
end
