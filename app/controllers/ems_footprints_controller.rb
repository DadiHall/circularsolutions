class EmsFootprintsController < InheritedResources::Base

  private

    def ems_footprint_params
      params.require(:ems_footprint).permit(:title, :body)
    end
end

