require 'rails_helper'

RSpec.describe CoursesController, type: :controller do
	let(:permitted_params) { [:name, :description, :status] }

	describe '#index' do
		before { get(:index) }

		describe 'template' do
		  render_views
		  it { is_expected.to respond_with(:success) }
		  it { is_expected.to render_template :index }
		end
	end

	describe '#new' do
	    before { get :new }

	    describe 'template' do
	      render_views
	      it { is_expected.to respond_with(:success) }
	      it { is_expected.to render_template :new }
	    end
  	end

  	describe '#create' do
	    let(:valid_course_params)    { attributes_for(:course) }
	    let(:invalid_course_params)  { attributes_for(:course, :course_invalid) }

	    describe 'permitted params' do
	      let(:params) { { course: valid_course_params } }

	      it do
	        is_expected.to permit(*permitted_params)
	          .for(:create, params: params).on(:course)
	      end
		end
	end
end
