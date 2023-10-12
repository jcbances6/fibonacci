require 'rails_helper'

RSpec.describe FibonacciController, type: :controller do
  describe "GET #calculate" do
    context "with a valid input" do
      it "returns the correct result" do
        get :calculate, params: { n: 6 } # Replace 5 with the input value you want to test
        expect(response).to have_http_status(:ok)
        expect(JSON.parse(response.body)).to eq({ "input" => 6, "result" => 8 }) # Replace the expected result
      end
    end

    context "with an invalid input" do
      it "returns an error" do
        get :calculate, params: { n: "invalid" } # Invalid input value
        expect(response).to have_http_status(:bad_request) # Adjust the expected status code
        expect(JSON.parse(response.body)).to include("error" => "Invalid input") # Replace the expected error message
      end
    end
  end
end
