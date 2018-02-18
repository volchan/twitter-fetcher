module Api
  module V1
    class BaseController < ActionController::Base
      include ApiResponse
      include ApiExeptionHandler
    end
  end
end
