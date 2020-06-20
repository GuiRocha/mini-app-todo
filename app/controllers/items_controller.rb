class ItemsController < ApplicationController
  before_action :set_todo

  def create
    @item= @todo.items.create(item_params)
    redirect_to @todo
  end

  private
  def set_todo
    @todo = Todo.find(params[:todo_id])
  end
  def item_params
    params[:item].permit(:name)
  end
end
