class BillAddressesController < ApplicationController
  before_action :set_bill_address, only: [:show, :edit, :update, :destroy]

  # GET /bill_addresses
  # GET /bill_addresses.json
  def index
    @bill_addresses = BillAddress.all
  end

  # GET /bill_addresses/1
  # GET /bill_addresses/1.json
  def show
  end

  # GET /bill_addresses/new
  def new
    @bill_address = BillAddress.new
  end

  # GET /bill_addresses/1/edit
  def edit
  end

  # POST /bill_addresses
  # POST /bill_addresses.json
  def create
    @bill_address = BillAddress.new(bill_address_params)

    respond_to do |format|
      if @bill_address.save
        format.html { redirect_to @bill_address, notice: 'Bill address was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bill_address }
      else
        format.html { render action: 'new' }
        format.json { render json: @bill_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bill_addresses/1
  # PATCH/PUT /bill_addresses/1.json
  def update
    respond_to do |format|
      if @bill_address.update(bill_address_params)
        format.html { redirect_to @bill_address, notice: 'Bill address was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bill_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_addresses/1
  # DELETE /bill_addresses/1.json
  def destroy
    @bill_address.destroy
    respond_to do |format|
      format.html { redirect_to bill_addresses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill_address
      @bill_address = BillAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bill_address_params
      params.require(:bill_address).permit(:customer_id, :country, :address, :postal_code, :state_province)
    end
end
