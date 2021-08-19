class Cuenta::CuentaClientesController < ApplicationController
  before_action :set_cuenta_cuenta_cliente, only: %i[ show edit update destroy ]

  # GET /cuenta/cuenta_clientes or /cuenta/cuenta_clientes.json
  def index
    @cuenta_cuenta_clientes = Cuenta::CuentaCliente.all
  end

  # GET /cuenta/cuenta_clientes/1 or /cuenta/cuenta_clientes/1.json
  def show
  end

  # GET /cuenta/cuenta_clientes/new
  def new
    @cuenta_cuenta_cliente = Cuenta::CuentaCliente.new
  end

  # GET /cuenta/cuenta_clientes/1/edit
  def edit
  end

  # POST /cuenta/cuenta_clientes or /cuenta/cuenta_clientes.json
  def create
    @cuenta_cuenta_cliente = Cuenta::CuentaCliente.new(cuenta_cuenta_cliente_params)

    respond_to do |format|
      if @cuenta_cuenta_cliente.save
        format.html { redirect_to @cuenta_cuenta_cliente, notice: "Cuenta cliente was successfully created." }
        format.json { render :show, status: :created, location: @cuenta_cuenta_cliente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cuenta_cuenta_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuenta/cuenta_clientes/1 or /cuenta/cuenta_clientes/1.json
  def update
    respond_to do |format|
      if @cuenta_cuenta_cliente.update(cuenta_cuenta_cliente_params)
        format.html { redirect_to @cuenta_cuenta_cliente, notice: "Cuenta cliente was successfully updated." }
        format.json { render :show, status: :ok, location: @cuenta_cuenta_cliente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cuenta_cuenta_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuenta/cuenta_clientes/1 or /cuenta/cuenta_clientes/1.json
  def destroy
    @cuenta_cuenta_cliente.destroy
    respond_to do |format|
      format.html { redirect_to cuenta_cuenta_clientes_url, notice: "Cuenta cliente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuenta_cuenta_cliente
      @cuenta_cuenta_cliente = Cuenta::CuentaCliente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cuenta_cuenta_cliente_params
      params.require(:cuenta_cuenta_cliente).permit(:activo, :cliente_id)
    end
end
