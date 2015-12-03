module Isaac
  class Question < ActiveRecord::Base
    belongs_to :isaac_metric, class_name: Isaac::Metric, foreign_key: :isaac_metric_id
    has_many :isaac_answers, class_name: Isaac::Answer, foreign_key: :isaac_question_id
  end
end
