class ValorsController < ApplicationController
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  http_basic_authenticate_with name: "hello", password: "world", except: :index
  before_action :set_valor, only: [:show, :update, :destroy]

  # GET /valors
  def index
    @valors = Valor.all

    render json: @valors
  end

  # GET /valors/1
  def show
    render json: @valor
  end

  # POST /valors
  def create
    @valor = Valor.new(valor_params)

    if @valor.save
      render json: @valor, status: :created, location: @valor
    else
      render json: @valor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /valors/1
  def update
    if @valor.update(valor_params)
      render json: @valor
    else
      render json: @valor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /valors/1
  def destroy
    @valor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_valor
      @valor = Valor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def valor_params
      params.require(:valor).permit(:uf, :date)
    end
end
