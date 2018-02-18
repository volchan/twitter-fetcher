module Api
  module V1
    class TimelinesController < Api::V1::BaseController
      def fetch
        json_response(data: { test: 'hello' })
      end
    end
  end
end
