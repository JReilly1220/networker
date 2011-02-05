class ParenthoodsController < ApplicationController
  def create
    @parenthood = Parenthood.new(params[:parenthood])
    if @parenthood.save
      flash[:notice] = "Successfully created parenthood."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

  def destroy
    @parenthood = Parenthood.find(params[:id])
    @parenthood.destroy
    flash[:notice] = "Successfully destroyed parenthood."
    redirect_to root_url
  end
end
