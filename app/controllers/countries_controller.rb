class CountriesController < ApplicationController
  def index
  end

  def fetch_country_states
    country = ISO3166::Country[params[:country_code]]
    @states = country.states.map {|state| [state.first, state[1].translations[I18n.locale.to_s]]}
  end
end
