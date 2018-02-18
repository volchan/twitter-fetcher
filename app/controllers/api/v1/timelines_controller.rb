module Api
  module V1
    class TimelinesController < Api::V1::BaseController
      def fetch
        twitter = TwitterService.new
        raise Exception, 'No username given!' if params[:username].to_s.empty?
        limit = params[:limit]
        tweets = twitter.fetch_timeline(params[:username], limit)
        json_response(count: tweets.length, tweets: tweets)
      end
    end
  end
end
