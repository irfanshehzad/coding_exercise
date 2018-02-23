require 'rails_helper'

RSpec.describe Snippet, type: :model do
  it "has a valid factory" do
  	snippet = create(:snippet)
    expect(snippet).to be_valid
  end
end