require 'pry'
module Isaac
  class ResultsController < ApplicationController
    def index
      @results = Isaac::Result.all
    end

    def show
      @result = Isaac::Result.find(params[:id])
      @report = Isaac::Result::ReportBuilder.new(@result).call
    end

    def new
      @test = Isaac::Test.find(params[:test_id])
      @result = @test.isaac_results.build
      @test_metrics = @test.isaac_metrics.includes(isaac_questions: [:isaac_answers])
    end

    def create
      result = Isaac::Test.find(params[:test_id]).isaac_results.new(answers: result_params)
      if result.save
        redirect_to test_result_path(params[:test_id], result)
      else
        @reslut = result
        render :new
      end
    end

    def destroy

    end

    private

    def result_params
      params.require(:result_form).permit!.to_json
    end
  end
end
