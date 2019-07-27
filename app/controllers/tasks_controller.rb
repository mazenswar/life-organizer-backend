class TasksController < ApplicationController

    def create
        task = Task.create(task_params)
        month = task.day.month
        render json: month, include: [:year, :days => {include: :tasks}]
    end

    private

    def task_params
        params.permit(:title, :content, :day_id)
    end
    
end


