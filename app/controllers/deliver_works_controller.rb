class DeliverWorksController < ApplicationController
  before_action :authenticate_user!

  def index
    @deliver_works = DeliverWork.where("user_id LIKE?", "#{current_user.id}")
    flash[:search_results] = nil
  end

  def new
    @deliver_work = DeliverWork.new
  end

  def create
    @deliver_work = DeliverWork.new(deliver_work_params)
    if @deliver_work.save
      flash[:notice] = "納品業務を新規登録しました"
      redirect_to :deliver_works
    else
      render "new"
    end
  end

  def edit
    @deliver_work = DeliverWork.find(params[:id])
  end

  def update
    @deliver_work = DeliverWork.find(params[:id])
    if @deliver_work.update(deliver_work_params)
      flash[:notice] = "IDが「#{@deliver_work.id}」の納品業務を更新しました"
      redirect_to :deliver_works
    else
      render "edit"
    end
  end

  def destroy
    @deliver_work = DeliverWork.find(params[:id])
    @deliver_work.destroy
    flash[:notice] = "納品業務を削除しました"
    redirect_to :deliver_works
  end

  def search
    if params[:keyword].present?
      @deliver_works = DeliverWork.where(["user_id like? AND name like?", "#{current_user.id}", "%#{params[:keyword]}%"])
      flash[:search_results] = "検索結果：#{@deliver_works.count}件"
    else
      @deliver_works = DeliverWork.where("user_id LIKE?", "#{current_user.id}")
      flash[:search_results] = nil
    end
    render "index"
  end

  def deliver_work_params
    params.require(:deliver_work).permit(:name, :time_required, :user_id)
  end
end
