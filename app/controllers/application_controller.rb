class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    def index
  	render html: 'Coucou toi'
  end

end
