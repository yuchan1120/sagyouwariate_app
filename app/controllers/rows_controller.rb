class RowsController < ApplicationController
  def new
    @regular_works = RegularWork.all
    @deliver_works = DeliverWork.all
    @product_management_works = ProductManagementWork.all
    @cleaning_works = CleaningWork.all
    @form = Form::Table.new
  end

  def create
    @form = Form::Table.new(table_params)
    if @form.save
      flash[:notice] = "作業割当を新規登録しました"
      redirect_to :root
    else
      render "new"
    end

  end

  private

    def table_params
        params.require(:form_table)
        .permit(rows_attributes: [:regular_work, :deliver_work, :product_management_work, :cleaning_work, :table_id])
    end
end
