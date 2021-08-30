class MaquinasController < ApplicationController
  before_action :set_maquina, only: %i[ show edit update destroy ]

  # GET /maquinas or /maquinas.json
  def index
    @maquinas = Maquina.all
  end

  # GET /maquinas/1 or /maquinas/1.json
  def show
  end

  # GET /maquinas/new
  def new
    @maquina = Maquina.new
  end

  # GET /maquinas/1/edit
  def edit
  end

  # POST /maquinas or /maquinas.json
  def create
    @maquina = Maquina.new(maquina_params)

    respond_to do |format|
      if @maquina.save
        format.html { redirect_to @maquina, notice: "Máquina criada com sucesso." }
        format.json { render :show, status: :created, location: @maquina }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @maquina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maquinas/1 or /maquinas/1.json
  def update
    respond_to do |format|
      if @maquina.update(maquina_params)
        format.html { redirect_to @maquina, notice: "Máquina alterada com sucesso." }
        format.json { render :show, status: :ok, location: @maquina }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @maquina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maquinas/1 or /maquinas/1.json
  def destroy
    @maquina.destroy
    respond_to do |format|
      format.html { redirect_to maquinas_url, notice: "Máquina excluída com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maquina
      @maquina = Maquina.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def maquina_params
      params.require(:maquina).permit(:tipo, :nome, :descricao, :garantia, :compra, :quebrada)
    end
end
