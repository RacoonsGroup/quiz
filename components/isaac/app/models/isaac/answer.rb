module Isaac
  class Answer < ActiveRecord::Base
    belongs_to :isaac_question, class_name: Isaac::Question, foreign_key: :isaac_question_id
  end
end
