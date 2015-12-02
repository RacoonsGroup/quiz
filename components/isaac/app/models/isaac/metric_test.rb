module Isaac
  class MetricTest < ActiveRecord::Base
    belongs_to :isaac_metric, foreign_key: :isaac_metric_id, class_name: Isaac::Metric
    belongs_to :isaac_test, foreign_key: :isaac_test_id, class_name: Isaac::Metric
  end
end
