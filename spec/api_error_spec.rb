require "spec_helper"

describe "ApiError" do
  it "should return the response_status if set in message" do
    error = Canvas::ApiError.new("Some terrible error message, status: 422")
    expect(error.response_status).to eq '422'
  end

  it "should return nil response_status if not set in message" do
    error = Canvas::ApiError.new("Some terrible error message")
    expect(error.response_status).to eq nil
  end
end