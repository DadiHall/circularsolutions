class LcasController < InheritedResources::Base

  private

    def lca_params
      params.require(:lca).permit(:title, :body, :image)
    end
end

