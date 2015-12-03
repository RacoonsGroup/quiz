module Isaac
  class MetricGraduation < ActiveRecord::Base
    belongs_to :isaac_metric, class_name: Isaac::Metric, foreign_key: :isaac_metric_id
  end
end
