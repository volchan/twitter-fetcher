module Api
  module V1
    class BaseController < ActionController::Base
      include ApiResponse
      include ApiExceptionHandler

      before_action :check_key

      private

      def check_key
        user = User.exists?(token: params[:key])
        raise Exception, 'Wrong api_key!' unless user
      end
    end
  end
end
