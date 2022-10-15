class BirdsController < ApplicationController
    wrap_parameters format: []

    def index 
        render json: Bird.all, status: :ok
    end

    def show
        bird = Bird.find_by(id:params[:id])
        render json: bird, status: :ok
    end

    def create
        bird = Bird.create(bird_params)
        render json: bird, status: :created
    end

    private

    def bird_params
        params.permit(:name, :species)
    end
end