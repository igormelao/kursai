require 'rails_helper'

RSpec.describe ClassroomsController, type: :controller do

  describe '#new' do
    describe 'template' do
      render_views

      before { get :new }

      it { is_expected.to respond_with(:success) }
      it { is_expected.to render_template :new }
    end

    describe 'helper methods' do
      describe 'template' do
        render_views

        before { get :new }

        it { is_expected.to respond_with(:success) }
        it { is_expected.to render_template :new }
      end

    end
  end
end
