require 'rails_helper'

RSpec.describe ActivitiesController, type: :request do
  it 'gets all activites' do
    get '/activities'
    expect(response.status).to eq(200)
  end
  it 'returns activities' do
    Activity.create!
    get '/activities'
    parsed_response = JSON.parse(response.body)
    expect(parsed_response.length).to eq(1)
  end
end
