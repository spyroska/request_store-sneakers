# frozen_string_literal: true

RSpec.describe RequestStore::Sneakers::Middleware do
  let(:app) { double("App") }
  let(:middleware) { RequestStore::Sneakers::Middleware.new(app) }

  let(:deserialized_msg) { "msg" }
  let(:delivery_info)    { Object.new }
  let(:metadata)         { Object.new }
  let(:handler)          { Object.new }

  describe "#call" do
    it "calls the app and clears the RequestStore afterwards" do
      expect(app).to receive(:call).with(deserialized_msg, delivery_info, metadata, handler)
      expect(::RequestStore).to receive(:clear!)

      middleware.call(deserialized_msg, delivery_info, metadata, handler)
    end
  end
end
