module Api::V1
  class TasksController < ApplicationController
    before_action :set_task, only: [:up, :down, :update, :destroy]

    # GET /tasks
    def index
      @tasks = Task.where(project_id: 1)
      puts params
      render json: @tasks
    end

    # POST /tasks
    def create
      @task = Task.new(task_params)

      if @task.save
        render json: @task, status: :created
      else
        render json: @task.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /tasks/1
    def update
      if @task.update(task_params)
        render json: @task
      else
        render json: @task.errors, status: :unprocessable_entity
      end
    end

    # DELETE /tasks/1
    def destroy
      #@task.destroy
      if @task.destroy
        head :no_content, status: :ok
      else
        render json: @task.errors, status: :unprocessable_entity
      end  
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_task
        @task = Task.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def task_params
        params.require(:task).permit(:name, :status, :project_id, :date)
      end
  end
end
