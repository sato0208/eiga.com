class MoviesController < ApplicationController
  def show
  end

  def index
    @movies = Movie.all
  end

  def create
    @movies = Movie.all
    @new_movie = Movie.new(movie_params)
    if @new_movie.save
      redirect_to movie_path(@new_movie), notice:'You have updated book successfully.'
    else
      render :index
    end
  end

    def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end

    def show
    @movie = Movie.find(params[:id])
  end

  def new
  	@new_movie = Movie.new
  end

 private
  def movie_params
    params.require(:movie).permit(:title, :body, :cast, :director, :release, :movie_image)
  end
end
