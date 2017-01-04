class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 	before_action :set_varx

    def set_varx
     @lcas = Lca.all
     @energy_analyses = EnergyAnalysis.all
     @green_accountings = GreenAccounting.all

     @visions = Vision.all
    end

   
end
