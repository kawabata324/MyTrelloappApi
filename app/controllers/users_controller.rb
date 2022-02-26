class UsersController < ApplicationController

  # 全てのUserの情報を返す id, name, nickname, image,
  def index
    @users = User.all
    render json: @users, each_serializer: UserSerializer
  end

  # 受けっとったuidのUserの情報を返す id, name, email, nickname, image
  def show
    @user = User.find_by(uid: user_params)
  end

  private

  def user_params
    params.require(:user).permit(:uid)
  end
end
