# frozen_string_literal: true

module PublicPages
  # Base controller for all public pages
  class ApplicationController < ::ApplicationController
    layout 'public_pages/application'
  end
end
