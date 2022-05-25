# frozen_string_literal: true

# Root Application Controller class.
class ApplicationController < ActionController::Base
  before_action :authenticate, if: -> { BasicAuthenticable.required? }

  private

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      BasicAuthenticable.authenticate(username, password)
    end
  end
end
