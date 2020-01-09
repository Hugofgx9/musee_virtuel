class ExhibsController < ApplicationController
  before_action :set_exhib, only: [:show, :edit, :update, :destroy]

  # GET /exhibs
  # GET /exhibs.json
  def index
    @exhibs = Exhib.all
  end

  # GET /exhibs/1
  # GET /exhibs/1.json
  def show
  end

  # GET /exhibs/new
  def new
    @exhib = Exhib.new
  end

  # GET /exhibs/1/edit
  def edit
  end

  # POST /exhibs
  # POST /exhibs.json
  def create
    @exhib = Exhib.new(exhib_params)

    respond_to do |format|
      if @exhib.save
        format.html { redirect_to @exhib, notice: 'Exhib was successfully created.' }
        format.json { render :show, status: :created, location: @exhib }
      else
        format.html { render :new }
        format.json { render json: @exhib.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exhibs/1
  # PATCH/PUT /exhibs/1.json
  def update
    respond_to do |format|
      if @exhib.update(exhib_params)
        format.html { redirect_to @exhib, notice: 'Exhib was successfully updated.' }
        format.json { render :show, status: :ok, location: @exhib }
      else
        format.html { render :edit }
        format.json { render json: @exhib.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exhibs/1
  # DELETE /exhibs/1.json
  def destroy
    @exhib.destroy
    respond_to do |format|
      format.html { redirect_to exhibs_url, notice: 'Exhib was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exhib
      @exhib = Exhib.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exhib_params
      params.require(:exhib).permit(:title, :description)
    end
end
