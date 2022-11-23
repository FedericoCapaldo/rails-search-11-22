class MoviesController < ApplicationController

  def index
    if params[:query].present?
      # @results = PgSearch.multisearch(params[:query])
      @movies = Movie.search(params[:query])
    else
      @movies = Movie.all
    end
  end
end
