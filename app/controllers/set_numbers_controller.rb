class SetNumbersController < ApplicationController
    def index
        # @exercise = SetNumber.find_by_exercise(params[:exercise_id])

        # render json: @exercise

        @exercises = Exercise.all

        render json: @exercises, only: [:title]
    end

    def show
        @exercises = Exercise.distinct.pluck(:title)

        render json: @exercises
    end

    def create
        @exercise = Exercise.create!(exercise_params)

        if @exercise.save
            render json: @exercise, status: :created
        else
            render json: @exercise.errors, status: :unprocessable_entity
        end
    end

    def update
        @set = SetNumber.create!(set_params)

        if @set.save
            render json: @set, status: :created
        else
            render json: @set.errors, status: :unprocessable_entity
        end
    end

    def destroy
        SetNumber.find(params[:id]).destroy!

        head :no_content
    end

    private

    def exercise_params
        params.require(:exercise).permit(:title)
    end

    def set_params
        params.require(:set_number).permit(:reps, :weight, :exercise_id)
    end
end
