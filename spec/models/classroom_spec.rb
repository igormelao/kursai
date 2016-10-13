require 'rails_helper'

RSpec.describe Classroom, type: :model do
  describe '#associations' do
    #it { is_expected.to belong_to(:student).inverse_of(:classrooms) }
    it { is_expected.to belong_to(:course).inverse_of(:classrooms)  }
  end

  describe '#validations' do
    it { is_expected.to validate_presence_of(:entry_at) }
    it { is_expected.to validate_presence_of(:student) }
    it { is_expected.to validate_presence_of(:course) }
  end
end
