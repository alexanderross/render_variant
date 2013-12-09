class VariantObjectsController < ApplicationController

  def index
    @variant_objects = VariantObject.all

    if(params[:variant])
      @variant = params[:variant]
    end
  end
end
