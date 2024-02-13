# frozen_string_literal: true

module RequestStore
  module Sneakers
    # :nodoc:
    class Middleware
      def initialize(app, *args)
        @app = app
        @args = args
      end

      def call(deserialized_msg, delivery_info, metadata, handler)
        @app.call(deserialized_msg, delivery_info, metadata, handler)
      ensure
        ::RequestStore.clear!
      end
    end
  end
end
