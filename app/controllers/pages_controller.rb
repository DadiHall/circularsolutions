class PagesController < ApplicationController
  def index

  	@lcas = Lca.all
  	@energy_analyses = EnergyAnalysis.all
  	@green_accountings = GreenAccounting.all

  	@ems_texts = EmsText.all
  	

  	@contact = Contact.new
  end
end
