require 'rails_helper'

RSpec.describe Course, type: :model do
  describe '#validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name)}
    it { should validate_length_of(:name)}
    it { is_expected.to validate_presence_of(:description) }
    it { should validate_length_of(:description)}
    it { is_expected.to validate_presence_of(:status) }
  end
end
