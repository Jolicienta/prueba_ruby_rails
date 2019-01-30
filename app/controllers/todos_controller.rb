class TodosController < ApplicationController

  def index
    @todo = Todo.new
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
    redirect_to todos_path
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(todo_params)
    redirect_to todos_path, notice: 'El ToDo se ha actualizado correctamente'
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to todos_path, notice: 'El ToDo se ha eliminado correctamente'
  end

  def complete
    @todo = Todo.find(params[:id])
    @todo.completed = true
    @todo.save
    redirect_to todos_path
  end

  def list
    @todos = Todo.all
  end

  private
  def todo_params
    params.require(:todo).permit(:description, :completed)
  end

end
