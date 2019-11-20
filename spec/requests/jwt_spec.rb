require 'rails_helper'

RSpec.describe 'POST /sign_in', type: :request do
  let(:user){ create(:user) }
  let(:url){ '/users/sign_in' }
  let(:headers){
    headers = {
      "ACCEPT" => "application/json"
    }
  }

  let(:params) do
    {
      user: {
        email: user.email,
        password: user.password
      }
    }
  end

  context 'when params are correct' do
    before do
      post url, params: params, headers: headers
    end

    it 'returns 201' do
      expect(response).to have_http_status(201)
    end

    it 'returns JTW token in authorization header' do
      expect(response.headers['Authorization']).to be_present
    end
  end

  context "when params are incorrect" do
    before do
      post url, headers: headers
    end

    it "returns 401" do
      expect(response).to have_http_status(401)
    end
  end
end

RSpec.describe 'DELETE /sign_out', type: :request do
  let(:url) { '/users/sign_out' }

  it 'returns 204, no content' do
    delete url
    expect(response).to have_http_status(204)
  end
end
