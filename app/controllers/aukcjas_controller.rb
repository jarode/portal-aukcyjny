class AukcjasController < ApplicationController
  # GET /aukcjas
  # GET /aukcjas.json
  def index
    @aukcjas = Aukcja.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aukcjas }
    end
  end

  # GET /aukcjas/1
  # GET /aukcjas/1.json
  def show
    @aukcja = Aukcja.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aukcja }
    end
  end

  # GET /aukcjas/new
  # GET /aukcjas/new.json
  def new
    @aukcja = Aukcja.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aukcja }
    end
  end

  # GET /aukcjas/1/edit
  def edit
    @aukcja = Aukcja.find(params[:id])
  end

  # POST /aukcjas
  # POST /aukcjas.json
  def create
    @aukcja = Aukcja.new(params[:aukcja])

    respond_to do |format|
      if @aukcja.save
        format.html { redirect_to @aukcja, notice: 'Aukcja was successfully created.' }
        format.json { render json: @aukcja, status: :created, location: @aukcja }
      else
        format.html { render action: "new" }
        format.json { render json: @aukcja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aukcjas/1
  # PUT /aukcjas/1.json
  def update
    @aukcja = Aukcja.find(params[:id])

    respond_to do |format|
      if @aukcja.update_attributes(params[:aukcja])
        format.html { redirect_to @aukcja, notice: 'Aukcja was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aukcja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aukcjas/1
  # DELETE /aukcjas/1.json
  def destroy
    @aukcja = Aukcja.find(params[:id])
    @aukcja.destroy

    respond_to do |format|
      format.html { redirect_to aukcjas_url }
      format.json { head :no_content }
    end
  end
end
