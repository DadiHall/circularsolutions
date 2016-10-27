class EmsGreenAcountingsController < InheritedResources::Base

  private

    def ems_green_acounting_params
      params.require(:ems_green_acounting).permit(:title, :body)
    end
end

