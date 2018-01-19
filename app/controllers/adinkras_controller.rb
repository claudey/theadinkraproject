class AdinkrasController < ApplicationController
  before_action :set_adinkra, only: [:show, :edit, :update, :destroy]

  # GET /adinkras
  # GET /adinkras.json
  def index
    @adinkras = Adinkra.all
  end

  # GET /adinkras/1
  # GET /adinkras/1.json
  def show
  end

  # GET /adinkras/new
  def new
    @adinkra = Adinkra.new
  end

  # GET /adinkras/1/edit
  def edit
  end

  # POST /adinkras
  # POST /adinkras.json
  def create
    @adinkra = Adinkra.new(adinkra_params)

    respond_to do |format|
      if @adinkra.save
        format.html { redirect_to @adinkra, notice: 'Adinkra was successfully created.' }
        format.json { render :show, status: :created, location: @adinkra }
      else
        format.html { render :new }
        format.json { render json: @adinkra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adinkras/1
  # PATCH/PUT /adinkras/1.json
  def update
    respond_to do |format|
      if @adinkra.update(adinkra_params)
        format.html { redirect_to @adinkra, notice: 'Adinkra was successfully updated.' }
        format.json { render :show, status: :ok, location: @adinkra }
      else
        format.html { render :edit }
        format.json { render json: @adinkra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adinkras/1
  # DELETE /adinkras/1.json
  def destroy
    @adinkra.destroy
    respond_to do |format|
      format.html { redirect_to adinkras_url, notice: 'Adinkra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adinkra
      @adinkra = Adinkra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adinkra_params
      params.require(:adinkra).permit(:name, :icon_png, :icon_svg, :translation, :meaning, :origin, :proverb, :theme)
    end
end
