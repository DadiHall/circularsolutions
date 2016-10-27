class PagesController < ApplicationController
  def index

  	@lcas = Lca.all
  	@energy_analyses = EnergyAnalysis.all
  	@green_accountings = GreenAccounting.all

  	@ems_green_acountings = EmsGreenAcounting.all
  	@ems_reportings = EmsReporting.all
  	@ems_footprints = EmsFootprint.all

  	@contact = Contact.new
  end
end
