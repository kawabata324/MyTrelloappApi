class TestsController < ApplicationController
before_action :authenticate_v1_user!
  def test
    render status: 200, json: {user: current_v1_user.id}
  end
end
