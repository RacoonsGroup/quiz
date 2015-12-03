module Isaac
  class MetricsController < ApplicationController
    def index
      @metrics = Isaac::Metric.all
    end

    def show
      @metric = Isaac::Metric.find(params[:id])
    end

    def new
      @metric = Isaac::Metric.new
    end

    def create
      metric = Isaac::Metric.new(metric_params)
      if metric.save
        redirect_to metrics_path
      else
        @metric = metric
        render :new
      end
    end

    def edit
      @metric = Isaac::Metric.find(params[:id])
    end

    def update
      metric = Isaac::Metric.find(params[:id])
      if metric.update(metric_params)
        redirect_to metrics_path
      else
        @metric = metric
        render :edit
      end
    end

    def destroy
      @metric = Isaac::Metric.find(params[:id])
      if @metric.destroy
        redirect_to metrics_path
      else
        redirect_to metrics_path, notice: 'destroy fail'
      end
    end

    private

    def metric_params
      params.require(:metric).
          permit(:name, :description, :author_id,
                 isaac_metric_graduations_attributes: [:id, :name, :description, :_destroy, :min_value, :max_value],
                 isaac_questions_attributes: [:id, :body, :_destroy,
                                              isaac_answers_attributes: [:id, :body, :value, :_destroy]]).
          merge(author_id: current_author.id)
    end
  end
end