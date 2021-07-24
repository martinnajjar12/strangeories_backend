require 'rails_helper'

RSpec.describe Story, type: :model do
  describe 'association' do
    it { should have_many(:likes) }
    it { should have_many(:dislikes) }
  end
end
