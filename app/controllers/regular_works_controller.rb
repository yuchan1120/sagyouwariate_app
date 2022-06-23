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
end
