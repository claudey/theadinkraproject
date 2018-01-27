class AdinkraSymbolsController < ApplicationController
  before_action :set_adinkra_symbol, only: [:show, :edit, :update, :destroy]

  # GET /adinkra_symbols
  # GET /adinkra_symbols.json
  def index
    @adinkra_symbols = AdinkraSymbol.all
  end

  # GET /adinkra_symbols/1
  # GET /adinkra_symbols/1.json
  def show
  end

  # GET /adinkra_symbols/new
  def new
    @adinkra_symbol = AdinkraSymbol.new
  end

  # GET /adinkra_symbols/1/edit
  def edit
  end

  # POST /adinkra_symbols
  # POST /adinkra_symbols.json
  def create
    @adinkra_symbol = AdinkraSymbol.new(adinkra_symbol_params)

    respond_to do |format|
      if @adinkra_symbol.save
        format.html { redirect_to @adinkra_symbol, notice: 'Adinkra symbol was successfully created.' }
        format.json { render :show, status: :created, location: @adinkra_symbol }
      else
        format.html { render :new }
        format.json { render json: @adinkra_symbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adinkra_symbols/1
  # PATCH/PUT /adinkra_symbols/1.json
  def update
    respond_to do |format|
      if @adinkra_symbol.update(adinkra_symbol_params)
        format.html { redirect_to @adinkra_symbol, notice: 'Adinkra symbol was successfully updated.' }
        format.json { render :show, status: :ok, location: @adinkra_symbol }
      else
        format.html { render :edit }
        format.json { render json: @adinkra_symbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adinkra_symbols/1
  # DELETE /adinkra_symbols/1.json
  def destroy
    @adinkra_symbol.destroy
    respond_to do |format|
      format.html { redirect_to adinkra_symbols_url, notice: 'Adinkra symbol was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adinkra_symbol
      @adinkra_symbol = AdinkraSymbol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adinkra_symbol_params
      params.require(:adinkra_symbol).permit(:name, :icon_png, :icon_svg, :translation, :meaning, :origin, :proverb, :theme)
    end
end
