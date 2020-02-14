# frozen_string_literal: true

class MoviesController < ApplicationController
  before_action :movie, only: [:show, :edit, :update]

  def index
    @movie = Movie.all
    @user_rol = User.find(current_user.id).user_type
  end

  def show
    @user_rol = User.find(current_user.id).user_type
  end

  def new
    @movie = Movie.new
  end

  def create
    Movie.create(movie_params)

    redirect_to movies_path
  end

  def edit; end

  def update
    @movie.update(movie_params)

    redirect_to movies_path
  end

  def destroy
    movie.destroy

    redirect_to movies_path
  end

  private

  def movie
    @movie ||= Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:name, :duration, :synopsis, :genre, :trailer, :image, :big_image)
  end

  def rol
    user_rol = User.find(current_user.id).user_type
    user_rol == 'admin'
  end
end
