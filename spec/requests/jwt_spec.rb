require 'rails_helper'

RSpec.describe 'POST /sign_in', type: :request do
  let(:user){ create(:user) }
  let(:url){ '/users/sign_in.json' }
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
      post url, params: params
    end

    it 'returns 200' do
      expect(response).to have_http_status(200)
    end

    it 'returns JTW token in authorization header' do
      expect(response.headers['Authorization']).to be_present
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
