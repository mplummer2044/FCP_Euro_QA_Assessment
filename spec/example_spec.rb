require 'spec_helper'
require_relative '../user'

RSpec.describe User do
  it 'creates a valid user using the factory' do
    user = build(:user)
    expect(user.username).to eq("test_user")
    expect(user.email).to eq("test@example.com")
  end
end