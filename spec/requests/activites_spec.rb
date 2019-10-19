require 'rails_helper'

RSpec.describe ActivitiesController, type: :request do
  it 'gets all Activites' do
    get '/activities'
    expect(response.status).to eq(200)
  end
end
