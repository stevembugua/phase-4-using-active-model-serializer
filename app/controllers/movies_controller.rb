class MoviesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def show
   movie = Movie.find(params[:id])
   render json: movie, serializer: MovieSummarySerializer
  end

  

  
end