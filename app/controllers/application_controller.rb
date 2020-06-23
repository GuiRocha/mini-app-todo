class ApplicationController < ActionController::Base
  # include Response
  # include ExceptionHandler
  def favorite_text
    return @favorite_exists ? "unFavorite" : "Favorite"
  end
  helper_method :favorite_text
end
