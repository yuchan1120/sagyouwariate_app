class RegularWorksController < ApplicationController
  def index
    @regular_works = RegularWork.all
  end

  def new
    @regular_work = RegularWork.new
  end

  def create
    @regular_work = RegularWork.new(params.require(:regular_work).permit(:name, :time_required))
    if @regular_work.save
      redirect_to :regular_works
    else
      render "new"
    end
  end

  def edit
    @regular_work = RegularWork.find(params[:id])
  end

  def update
    @regular_work = RegularWork.find(params[:id])
    if @regular_work.update(params.require(:regular_work).permit(:name, :time_required))
      redirect_to :regular_works
    else
      render "edit"
    end
  end

  def destroy
    @regular_work = RegularWork.find(params[:id])
    @regular_work.destroy
    redirect_to :regular_works
  end
end
