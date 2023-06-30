require 'rails_helper'

RSpec.describe "Api::V1::Users", type: :request do
  # describe "GET /index" do
  #   pending "add some examples (or delete) #{__FILE__}"
  # end

  let!(:user) { create(:user) }
  let(:user_id) { user.id }

  describe "GET /users/:id" do
    before do
      headers = { "Accept" => "application/vnd.taskmanager.v1" }
      get "/users/#{user_id}", {}, headers
    end

    context "when the user exists" do
      it "returns the user" do
        user_response = JSON.parse(response.body)
        expect(user_response["id"]).to eq(user_id)
      end  
    end

  end

end
