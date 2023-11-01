class CountriesController < ApplicationController
  def index
  end

  def fetch_country_states
    country = ISO3166::Country[params[:country_code]]
    @states = country.states.map {|state| [state.first, state[1].translations[I18n.locale.to_s]]}
  end

  def fetch_names
    respond_to do |format|
      format.turbo_stream {}
      format.html {redirect_to "#"}
    end
    @names = ["a", "b", "c"]
  end
end
