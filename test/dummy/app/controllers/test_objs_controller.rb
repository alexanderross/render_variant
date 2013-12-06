class TestObjsController < ApplicationController

  def index
    @test_objs = TestObj.all

    if(params[:variant])
      @variant = params[:variant]
    end
  end
end
