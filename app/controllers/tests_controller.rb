class TestsController < ApplicationController

  def test
    render json: { status: 'okok'}
  end
end
