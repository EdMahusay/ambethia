class ScrapsController < ApplicationController
  before_filter :authenticate_user!

  before_action :set_scrap, only: [:show, :edit, :update, :destroy]

  # GET /scraps
  def index
    @scraps = current_user.scraps.all
  end

  # GET /scraps/1
  def show
  end

  # GET /scraps/new
  def new
    @scrap = current_user.scraps.new
  end

  # GET /scraps/1/edit
  def edit
  end

  # POST /scraps
  def create
    @scrap = current_user.scraps.new(scrap_params)

    if @scrap.save
      redirect_to @scrap, notice: 'Scrap was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /scraps/1
  def update
    if @scrap.update(scrap_params)
      redirect_to @scrap, notice: 'Scrap was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /scraps/1
  def destroy
    @scrap.destroy
    redirect_to scraps_url, notice: 'Scrap was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scrap
      @scrap = current_user.scraps.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scrap_params
      params.require(:scrap).permit(:body, :expires_after, :syntax)
    end
end
