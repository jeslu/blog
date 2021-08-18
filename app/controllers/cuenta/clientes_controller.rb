class Cuenta::ClientesController < ApplicationController
  before_action :set_cuenta_cliente, only: %i[ show edit update destroy ]

  # GET /cuenta/clientes or /cuenta/clientes.json
  def index
    @cuenta_clientes = Cuenta::Cliente.all
  end

  # GET /cuenta/clientes/1 or /cuenta/clientes/1.json
  def show
  end

  # GET /cuenta/clientes/new
  def new
    @cuenta_cliente = Cuenta::Cliente.new
  end

  # GET /cuenta/clientes/1/edit
  def edit
  end

  # POST /cuenta/clientes or /cuenta/clientes.json
  def create
    @cuenta_cliente = Cuenta::Cliente.new(cuenta_cliente_params)

    respond_to do |format|
      if @cuenta_cliente.save
        format.html { redirect_to @cuenta_cliente, notice: "Cliente was successfully created." }
        format.json { render :show, status: :created, location: @cuenta_cliente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cuenta_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuenta/clientes/1 or /cuenta/clientes/1.json
  def update
    respond_to do |format|
      if @cuenta_cliente.update(cuenta_cliente_params)
        format.html { redirect_to @cuenta_cliente, notice: "Cliente was successfully updated." }
        format.json { render :show, status: :ok, location: @cuenta_cliente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cuenta_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuenta/clientes/1 or /cuenta/clientes/1.json
  def destroy
    @cuenta_cliente.destroy
    respond_to do |format|
      format.html { redirect_to cuenta_clientes_url, notice: "Cliente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuenta_cliente
      @cuenta_cliente = Cuenta::Cliente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cuenta_cliente_params
      params.require(:cuenta_cliente).permit(:cliente_id, :activo)
    end
end
