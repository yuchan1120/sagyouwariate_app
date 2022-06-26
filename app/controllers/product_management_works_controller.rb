class ProductManagementWorksController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @product_management_works = ProductManagementWork.where("user_id LIKE?", "#{current_user.id}")
    flash[:notice] = nil
  end

  def new
    @product_management_work = ProductManagementWork.new
  end

  def create
    @product_management_work = ProductManagementWork.new(product_management_work_params)
    if @product_management_work.save
      flash[:notice] = "商品管理業務を新規登録しました"
      redirect_to :product_management_works
    else
      render "new"
    end
  end

  def edit
    @product_management_work = ProductManagementWork.find(params[:id])
  end

  def update
    @product_management_work = ProductManagementWork.find(params[:id])
    if @product_management_work.update(product_management_work_params)
      flash[:notice] = "IDが「#{@product_management_work.id}」の商品管理業務を更新しました"
      redirect_to :product_management_works
    else
      render "edit"
    end
  end

  def destroy
    @product_management_work = ProductManagementWork.find(params[:id])
    @product_management_work.destroy
    flash[:notice] = "商品管理業務を削除しました"
    redirect_to :product_management_works
  end

  def search
    if params[:keyword].present?
      @product_management_works = ProductManagementWork.where(["user_id like? AND name like?", "#{current_user.id}", "%#{params[:keyword]}%"])
      flash[:notice] = "検索結果：#{@product_management_works.count}件"
    else
      @product_management_works = ProductManagementWork.where("user_id LIKE?", "#{current_user.id}")
      flash[:notice] = nil
    end
    render "index"
  end

  def product_management_work_params
    params.require(:product_management_work).permit(:name, :time_required, :user_id)
  end
end
