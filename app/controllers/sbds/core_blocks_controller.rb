module Sbds
  class CoreBlocksController < ApplicationController
    def index
      @page = params[:page].presence || 1
      @core_blocks = CoreBlock.all
      
      @core_blocks = @core_blocks.paginate(page: @page, per_page: 25)
    end
  end
  
  def show
  end
end
