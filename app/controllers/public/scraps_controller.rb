class Public::ScrapsController < ApplicationController

  def show
    @scrap = Scrap.unexpired.where(slug: params[:slug]).first
    @scrap.viewed(self) if @scrap
  end
end
