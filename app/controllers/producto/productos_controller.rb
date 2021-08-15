class Producto::ProductosController < ApplicationController
  before_action :set_producto_producto, only: %i[ show edit update destroy ]

  # GET /producto/productos or /producto/productos.json
  def index
    @producto_productos = Producto::Producto.all
  end

  # GET /producto/productos/1 or /producto/productos/1.json
  def show
  end

  # GET /producto/productos/new
  def new
    @producto_producto = Producto::Producto.new
  end

  # GET /producto/productos/1/edit
  def edit
  end

  # POST /producto/productos or /producto/productos.json
  def create
    @producto_producto = Producto::Producto.new(producto_producto_params)

    respond_to do |format|
      if @producto_producto.save
        format.html { redirect_to @producto_producto, notice: "Producto was successfully created." }
        format.json { render :show, status: :created, location: @producto_producto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @producto_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto/productos/1 or /producto/productos/1.json
  def update
    respond_to do |format|
      if @producto_producto.update(producto_producto_params)
        format.html { redirect_to @producto_producto, notice: "Producto was successfully updated." }
        format.json { render :show, status: :ok, location: @producto_producto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @producto_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto/productos/1 or /producto/productos/1.json
  def destroy
    @producto_producto.destroy
    respond_to do |format|
      format.html { redirect_to producto_productos_url, notice: "Producto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto_producto
      @producto_producto = Producto::Producto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def producto_producto_params
      params.require(:producto_producto).permit(:barcode, :nombre, :descripcion, :precio, :umedida_id, :categoria_id)
    end
end
