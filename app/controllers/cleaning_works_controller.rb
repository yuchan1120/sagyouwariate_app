class CleaningWorksController < ApplicationController
  def index
    @cleaning_works = CleaningWork.all
  end
  
  def new
    @cleaning_work = CleaningWork.new
  end

  def create
    @cleaning_work = CleaningWork.new(cleaning_work_params)
    if @cleaning_work.save
      flash[:notice] = "清掃業務を新規登録しました"
      redirect_to :cleaning_works
    else
      render "new"
    end
  end

  def edit
    @cleaning_work = CleaningWork.find(params[:id])
  end

  def update
    @cleaning_work = CleaningWork.find(params[:id])
    if @cleaning_work.update(cleaning_work_params)
      flash[:notice] = "IDが「#{@cleaning_work.id}」の清掃業務を更新しました"
      redirect_to :cleaning_works
    else
      render "edit"
    end
  end

  def destroy
    @cleaning_work = CleaningWork.find(params[:id])
    @cleaning_work.destroy
    flash[:notice] = "清掃業務を削除しました"
    redirect_to :cleaning_works
  end

  def cleaning_work_params
    params.require(:cleaning_work).permit(:name, :time_required)
  end
end
