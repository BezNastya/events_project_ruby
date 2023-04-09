class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_locale

  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end

  def extract_locale
    parsed_locale = params[:lang] || request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    available_locales = ['en', 'ua']
    parsed_locale.in?(available_locales) ? parsed_locale.to_sym : nil
  end
end