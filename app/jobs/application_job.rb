# frozen_string_literal: true

# Base job class
class ApplicationJob < ActiveJob::Base
  # retry_on ActiveRecord::Deadlocked
  # discard_on ActiveJob::DeserializationError
end
