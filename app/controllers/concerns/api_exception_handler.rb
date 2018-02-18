module ApiExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      json_response({ error: e.message }, :not_found)
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      json_response({ error: e.message }, :unprocessable_entity)
    end

    rescue_from Exception do |e|
      json_response({ error: e.message }, :not_acceptable)
    end
  end
end
