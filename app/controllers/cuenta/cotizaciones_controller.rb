class Cuenta::CotizacionesController < ApplicationController
  before_action :set_cuenta_cliente, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_cuenta_cotizacion, only: %i[ show edit update destroy ]
 

  # GET /cuenta/cotizaciones or /cuenta/cotizaciones.json
  def index
    @cuenta_cotizaciones = Cuenta::Cotizacion.all
  end

  # GET /cuenta/cotizaciones/1 or /cuenta/cotizaciones/1.json
  def show
  end

  # GET /cuenta/cotizaciones/new
  def new
    @cuenta_cotizacion = Cuenta::Cotizacion.new
    # /cuenta/cuenta_clientes/:cuenta_cliente_id/cotizaciones
    @url_form = "#{@URL_DOMAIN}/cuenta/cuenta_clientes/#{@cuenta_cliente.id}/cotizaciones/"
  end

  # GET /cuenta/cotizaciones/1/edit
  def edit
    @cuenta_cotizacion = @cuenta_cliente.Cotizaciones.find(params[:id])
    @url_form = "#{@URL_DOMAIN}/cuenta/cuenta_clientes/#{@cuenta_cliente.id}/cotizaciones/#{@cuenta_cotizaciones.id}"
  end

  # POST /cuenta/cotizaciones or /cuenta/cotizaciones.json
  def create
    #@cuenta_cotizacion = Cuenta::Cotizacion.new(cuenta_cotizacion_params)
    

    respond_to do |format|
      
      if @cuenta_cliente.Cotizaciones << Cuenta::Cotizacion.new(cuenta_cotizacion_params)
        format.html { redirect_"#{@URL_DOMAIN}/cuenta/cuenta_clientes/#{@cuenta_cliente.id}", notice: "Cotizacion was successfully created." }
        format.json { render :show, status: :created, location: @cuenta_cotizacion }
      else
        format.html { redirect_"#{@URL_DOMAIN}/cuenta/cuenta_clientes/#{@cuenta_cliente.id}", notice: "Cotizacion no se creo." }
        format.json { render json: @cuenta_cotizacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuenta/cotizaciones/1 or /cuenta/cotizaciones/1.json
  def update
    respond_to do |format|
      if @cuenta_cotizacion.update(cuenta_cotizacion_params)
        format.html { redirect_to @cuenta_cotizacion, notice: "Cotizacion was successfully updated." }
        format.json { render :show, status: :ok, location: @cuenta_cotizacion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cuenta_cotizacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuenta/cotizaciones/1 or /cuenta/cotizaciones/1.json
  def destroy
    @cuenta_cotizacion.destroy
    respond_to do |format|
      format.html { redirect_to cuenta_cotizaciones_url, notice: "Cotizacion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    #optener la id de la cuenta del cliente
    def set_cuenta_cliente
     #@cuenta_cliente = Cuenta::CuentaCliente.find(params[:cuenta_id])
     
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_cuenta_cotizacion
     @cuenta_cotizacion = @cuenta_cliente = Cuenta::CuentaCliente.find(params[:cuenta_id])
     @cuenta_cotizacion = @cuenta_cliente.Cotizaciones.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cuenta_cotizacion_params
      params.require(:cuenta_cotizacion).permit(:cuenta_id, :producto_id, :cantidad, :total)
    end
end
