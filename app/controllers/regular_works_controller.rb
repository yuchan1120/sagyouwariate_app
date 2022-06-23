class RegularWorksController < ApplicationController
  def index
    @regular_works = RegularWork.all
  end

  def new
    @regular_work = RegularWork.new
  end

  def create
    @regular_work = RegularWork.new(regular_work_params)
    if @regular_work.save
      flash[:notice] = "定時業務を新規登録しました"
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
    if @regular_work.update(regular_work_params)
      flash[:notice] = "IDが「#{@regular_work.id}」の定時業務を更新しました"
      redirect_to :regular_works
    else
      render "edit"
    end
  end

  def destroy
    @regular_work = RegularWork.find(params[:id])
    @regular_work.destroy
    flash[:notice] = "定時業務を削除しました"
    redirect_to :regular_works
  end

  def regular_work_params
    params.require(:regular_work).permit(:name, :time_required)
  end
end
