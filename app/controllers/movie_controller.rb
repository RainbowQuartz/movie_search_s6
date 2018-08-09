class MovieController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def search
    params.inspect
    @movie = SearchMovie.perform(params[:movie])
    p @movie
    redirect_to show
  end

  def show
    @title = @movie.title
    @release_date = @movie.release_date
    @director = @movie.director
    @image = @movie.images
  end
end
