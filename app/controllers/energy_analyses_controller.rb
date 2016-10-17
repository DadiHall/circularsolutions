class EnergyAnalysesController < InheritedResources::Base

  private

    def energy_analysis_params
      params.require(:energy_analysis).permit(:title, :body, :image)
    end
end

