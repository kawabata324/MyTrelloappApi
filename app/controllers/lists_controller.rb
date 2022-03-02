class ListsController < ApplicationController

  def index
    @lists = List.where(user_id: current_v1_user.id)

    render status: 200, json: @lists, each_serializer: ListSerializer
  end

  def create
    @list = List.create!(list_params.merge(user_id: current_v1_user.id))

    render status: 200, json: @list, serializer: ListSerializer
  end

  def update
    _list = List.find(params[:id])

    @list = _list.update!(list_params)

    render status: 200, json: @list, serializer: ListSerializer
  end

  def destroy
    @list = List.find(params[:id])
    pp @list
    @list.destroy!

    render status: 200, json: @list, serializer: ListSerializer
  end

  private

  def list_params
    params.require(:list).permit(:list_title, :list_id)
  end

end
