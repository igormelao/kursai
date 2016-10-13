FactoryGirl.define do
  factory :course do
  	id 1
    name "Administração"
    description 'Curso de administração'
    status Status::ACTIVE
  end

  trait :course_invalid do
    name nil
  end
end