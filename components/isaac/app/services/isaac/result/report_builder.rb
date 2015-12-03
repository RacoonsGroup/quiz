require 'pry'
module Isaac
  class Result::ReportBuilder

    METRIC_REG = /[0-9]+/

    def initialize(result_obj)
      @result_obj = result_obj
    end

    def call
      raw_points = points
      report_build(raw_points)
    end

    private

    def points
      result = []

      @result_obj.answers.each do |metric|
        m_id = metric[0][METRIC_REG]
        m_value = metric[1].values.map do |answer_id|
          Isaac::Answer.find(answer_id).value.to_i
        end.sum
        result << [m_id, m_value]
      end

      Hash[result]
    end

    def report_build(raw_points)
      raw_points.inject({}) do |result, (metric, points)|
        metric_obj = Isaac::Metric.find(metric)
        metric_graudation = metric_obj.
            isaac_metric_graduations.where('"min_value" <= :points AND "max_value" >= :points', points: points).
            first
        result[metric_obj.name] = metric_graudation.description
        result
      end
    end

  end
end