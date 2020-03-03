require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of :email}
    it { should validate_presence_of :api_key}
    it { should validate_confirmation_of :password}
  end
end