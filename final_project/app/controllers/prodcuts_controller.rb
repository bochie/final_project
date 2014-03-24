class ProdcutsController < ApplicationController
  before_action :set_prodcut, only: [:show, :edit, :update, :destroy]

  # GET /prodcuts
  # GET /prodcuts.json
  def index
    @prodcuts = Prodcut.all
  end

  # GET /prodcuts/1
  # GET /prodcuts/1.json
  def show
  end

  # GET /prodcuts/new
  def new
    @prodcut = Prodcut.new
  end

  # GET /prodcuts/1/edit
  def edit
  end

  # POST /prodcuts
  # POST /prodcuts.json
  def create
    @prodcut = Prodcut.new(prodcut_params)

    respond_to do |format|
      if @prodcut.save
        format.html { redirect_to @prodcut, notice: 'Prodcut was successfully created.' }
        format.json { render action: 'show', status: :created, location: @prodcut }
      else
        format.html { render action: 'new' }
        format.json { render json: @prodcut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prodcuts/1
  # PATCH/PUT /prodcuts/1.json
  def update
    respond_to do |format|
      if @prodcut.update(prodcut_params)
        format.html { redirect_to @prodcut, notice: 'Prodcut was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @prodcut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prodcuts/1
  # DELETE /prodcuts/1.json
  def destroy
    @prodcut.destroy
    respond_to do |format|
      format.html { redirect_to prodcuts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prodcut
      @prodcut = Prodcut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prodcut_params
      params.require(:prodcut).permit(:product_id, :name, :qty_on_hand, :price)
    end
end
