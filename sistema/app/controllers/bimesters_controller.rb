class BimestersController < ApplicationController
  before_action :set_bimester, only: [:show, :edit, :update, :destroy]

  # GET /bimesters
  # GET /bimesters.json
  def index
    @bimesters = Bimester.all
  end

  # GET /bimesters/1
  # GET /bimesters/1.json
  def show
  end

  # GET /bimesters/new
  def new
    @bimester = Bimester.new
  end

  # GET /bimesters/1/edit
  def edit
  end

  # POST /bimesters
  # POST /bimesters.json
  def create
    @bimester = Bimester.new(bimester_params)

    respond_to do |format|
      if @bimester.save
        format.html { redirect_to @bimester, notice: 'Bimester was successfully created.' }
        format.json { render :show, status: :created, location: @bimester }
      else
        format.html { render :new }
        format.json { render json: @bimester.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bimesters/1
  # PATCH/PUT /bimesters/1.json
  def update
    respond_to do |format|
      if @bimester.update(bimester_params)
        format.html { redirect_to @bimester, notice: 'Bimester was successfully updated.' }
        format.json { render :show, status: :ok, location: @bimester }
      else
        format.html { render :edit }
        format.json { render json: @bimester.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bimesters/1
  # DELETE /bimesters/1.json
  def destroy
    @bimester.destroy
    respond_to do |format|
      format.html { redirect_to bimesters_url, notice: 'Bimester was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bimester
      @bimester = Bimester.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bimester_params
      params.require(:bimester).permit(:bimestre, :period_id)
    end
end
