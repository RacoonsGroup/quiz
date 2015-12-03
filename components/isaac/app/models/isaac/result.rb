module Isaac
  class Result < ActiveRecord::Base
    belongs_to :isaac_test, class_name: Isaac::Test, foreign_key: :isaac_test_id
  end
end
