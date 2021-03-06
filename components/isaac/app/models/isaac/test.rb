module Isaac
  class Test < ActiveRecord::Base
    belongs_to :author, class_name: Isaac.author_class
    has_many :isaac_metric_tests, class_name: Isaac::MetricTest, foreign_key: :isaac_test_id
    has_many :isaac_metrics, through: :isaac_metric_tests, class_name: Isaac::Metric
    has_many :isaac_results, class_name: Isaac::Result, foreign_key: :isaac_test_id

    accepts_nested_attributes_for :isaac_metric_tests

    validates :author_id, presence: true

    def self.author_class
      Isaac.author_class.constantize
    end
  end
end
