module Isaac
  class TestsController < ApplicationController
    def index
      @tests = Isaac::Test.all
    end

    def new
      @test = Isaac::Test.new
    end

    def create
      Isaac::Test.new(test_params) do |test|
        if test.save
          redirect_to root_path
        else
          @test = test
          render :new
        end
      end
    end

    def edit
      @test = Isaac::Test.find(params[:id])
    end

    def update
      @test = Isaac::Test.find(params[:id])
      if @test.update(test_params)
        redirect_to tests_path
      else
        render :edit, notice: 'fail update'
      end
    end

    def destroy
      @test = Isaac::Test.find(params[:id])
      if @test.destroy
        redirect_to tests_path
      else
        redirect_to tests_path, notice: 'fail destroy'
      end
    end

    private

    def test_params
      params.require(:test).permit(:name, :description, :author_id,
                                   isaac_metric_tests_attributes: [:id, :isaac_metric_id, :_destroy])
          .merge(author_id: current_author.id)
    end
  end
end