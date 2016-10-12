require 'rails_helper'

RSpec.describe StudentsController, type: :controller do
	let(:students) 		   { create_list(:student, 2) }
	let(:student)  		   { students.first }
	let(:permitted_params) { [:name, :register_number, :status] }
	let(:error_msg) 	   { 'error message' }

	describe '#index' do
		before { get(:index) }

		describe 'render index' do
			render_views
			it{ is_expected.to respond_with(:success) }
			it{ is_expected.to render_template(:index) }
		end
	end

	describe '#new' do
		before { get(:new) }

		describe 'render new' do
			render_views
			it{ is_expected.to respond_with(:success) }
			it{ is_expected.to render_template(:new)}
		end
	end

	describe '#create' do 
		let(:valid_student_params) { attributes_for(:student) }
		let(:invalid_student_params) { attributes_for(:student, :invalid)}

		describe 'permitted params' do
			let(:params) { {student: valid_student_params } }
			
			it do
				is_expected.to permit(*permitted_params)
					.for(:create, params: params).on(:student)
			end
		end
	end
end