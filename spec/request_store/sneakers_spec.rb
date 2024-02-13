# frozen_string_literal: true

RSpec.describe RequestStore::Sneakers do
  it "has a version number" do
    expect(RequestStore::Sneakers::VERSION).not_to be nil
  end

  describe "#add_custom_middleware!" do
    subject { described_class }

    it "added our middleware to the server stack" do
      subject.add_custom_middleware!
      expect(::Sneakers.middleware.to_a).to include(hash_including(class: RequestStore::Sneakers::Middleware))
    end
  end
end
