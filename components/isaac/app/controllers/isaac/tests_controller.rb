require 'pry'
module Isaac
  class TestsController < ApplicationController
    def index
      @tests = Isaac::Test.all
    end

    private

    def test_params
      params.require(:test).permit(:name, :description, :author)
    end
  end
end