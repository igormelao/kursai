FactoryGirl.define do
	factory :student do
		name "Igor"
		register_number "123"
		status Status:ACTIVE
	end
end