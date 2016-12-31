class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 	before_action :set_vars

    def set_vars
     @lcas = Lca.all
     @energy_analyses = EnergyAnalysis.all
     @green_accountings = GreenAccounting.all
    end

   
end
