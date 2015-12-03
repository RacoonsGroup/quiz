module Isaac
  class Metric < ActiveRecord::Base
    belongs_to :author, class_name: Isaac.author_class
    has_many :isaac_metric_tests, class_name: Isaac::MetricTest, foreign_key: :isaac_metric_id
    has_many :isaac_tests, through: :isaac_metric_tests, class_name: Isaac::Test, foreign_key: :isaac_metric_id
    has_many :isaac_metric_graduations, class_name: Isaac::MetricGraduation, foreign_key: :isaac_metric_id
    has_many :isaac_questions, class_name: Isaac::Question, foreign_key: :isaac_metric_id

    accepts_nested_attributes_for :isaac_metric_graduations
    accepts_nested_attributes_for :isaac_questions

    def self.author_class
      Isaac.author_class.constantize
    end
  end
end
