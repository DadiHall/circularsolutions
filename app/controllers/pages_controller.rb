class PagesController < ApplicationController
  def index

  	@lcas = Lca.all
  	@energy_analyses = EnergyAnalysis.all
  	@green_accountings = GreenAccounting.all

  	@ems_texts = EmsText.all
  	

  	@contact = Contact.new
  end

  def lca

  end

  def green_acounting

  end

  def energyanalyses

  end



end
