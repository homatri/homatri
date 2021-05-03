# frozen_string_literal: true

# Base controller class
class ApplicationController < ActionController::Base
  # app/controllers/concerns/default_url_options
  include DefaultUrlOptions
end
