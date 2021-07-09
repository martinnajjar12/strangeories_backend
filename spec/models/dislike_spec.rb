require 'rails_helper'

RSpec.describe Dislike, type: :model do
  describe 'association' do
    it { should belong_to(:story) }
  end
end
