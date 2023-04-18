class LanguagesController < ApplicationController
    def set_language
      session[:locale] = params[:locale]
      redirect_back(fallback_location: root_path)
    end
  end