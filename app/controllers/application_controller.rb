class ApplicationController < ActionController::Base
  protect_from_forgery

  http_basic_authenticate_with name: ENV.fetch('DG_USER'), password: ENV.fetch('DG_PASS')
end
