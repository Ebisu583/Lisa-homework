class HomeworksController < ApplicationController
  before_action :set_homework, only: [:show, :edit, :update, :destroy]

  def index
    @homeworks = Homework.all
  end

  def show
  end

  def new
    @homework = Homework.new
  end

  def create
    @homework = Homework.new(homework_params)
    @homework.save
    redirect_to homeworks_path
  end

  def edit
  end

  def update
    @homework.update(homework_params)
    redirect_to homework_path(@homework)
  end

  def destroy
    @homework.destroy
    redirect_to homeworks_path
  end

private

def set_homework
  @homework = Homework.find(params[:id])
end

def homework_params
  params.require(:homework).permit(:title, :description, :completed)
end
end
