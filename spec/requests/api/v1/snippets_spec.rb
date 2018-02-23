require 'rails_helper'
describe "Snippets API" do
  it 'sends a list of snippets' do
    10.times { create(:snippet)  }

    get '/api/v1/snippets.json?key=1e8bb9ef2387e59b133'
    #byebug
    json = JSON.parse(response.body)
    # check to make sure the right amount of snippets are returned
    expect(json.length).to eq(10)
  end
  
end