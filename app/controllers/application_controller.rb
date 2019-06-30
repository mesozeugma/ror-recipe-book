class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end

  def extract_locale
    parsed_locale = params[:locale] || request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/)[0]
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end

  def default_url_options
    {locale: I18n.locale}
  end

  def require_admin
    unless current_user.try(:admin?)
      redirect_to recipes_url, alert: t('alert.access_denied')
    end
  end
end
