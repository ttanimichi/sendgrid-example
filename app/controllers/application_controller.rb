class ApplicationController < ActionController::Base
  protect_from_forgery

  USERS = { ENV.fetch('DG_USER') => ENV.fetch('DG_PASS') }

  before_action :authenticate

  private

  # TODO: concern に追い出す
  def authenticate
    authenticate_or_request_with_http_digest do |username|
      USERS[username]
    end
  end
end
