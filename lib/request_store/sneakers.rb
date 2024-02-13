# frozen_string_literal: true

require "request_store"
require "sneakers"

require "request_store/sneakers/version"
require "request_store/sneakers/middleware"

module RequestStore
  # :nodoc:
  module Sneakers
    def self.add_custom_middleware!
      ::Sneakers.middleware.use(Middleware, {})
    end
  end
end
