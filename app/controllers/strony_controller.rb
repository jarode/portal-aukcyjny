class StronyController < ApplicationController
  def index
  	@aukcje = Aukcja.order(:nazwa)
  end
end
