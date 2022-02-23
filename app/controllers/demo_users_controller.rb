class DemoUsersController < ApplicationController

  def index
    @demo_users = DemoUser.all
    render status: 200, json: @demo_users, each_serializer: DemoUserSerializer
  end

  def show
    @demo_user = DemoUser.find_by(id: params[:id])
    render status: 200, json: @demo_user, serializer: DemoUserSerializer
  end

end
