class SettingsController < ApplicationController

  def index
    @settings = Setting.all
    respond_to do |format|
      format.html
      format.json {render :json => @settings}
    end
  end

  def show
    @setting = Setting.find(params[:id])
  end

  def new
    @setting = Setting.new
  end

  def create
    @setting = Setting.new(setting_params)
    @setting.save
    redirect_to settings_path
  end

  def edit
    @setting = Setting.find(params[:id])
  end

  def update
    @setting = Setting.find(params[:id])
    if @setting.update(setting_params)
      redirect_to settings_path
    else
      render "edit"
    end
  end

  def destroy
    @setting = Setting.find(params[:id])
    @setting.destroy
    redirect_to settings_path
  end

  private

    def setting_params
      params[:setting].permit(:name, :value, :valueType, :description)
    end

end
