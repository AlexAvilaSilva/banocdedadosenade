class CadastroQuestosController < ApplicationController
  before_action :set_cadastro_questo, only: [:show, :edit, :update, :destroy]

  # GET /cadastro_questos
  # GET /cadastro_questos.json
  def index
    @cadastro_questos = CadastroQuesto.all
  end

  # GET /cadastro_questos/1
  # GET /cadastro_questos/1.json
  def show
  end

  # GET /cadastro_questos/new
  def new
    @cadastro_questo = CadastroQuesto.new
  end

  # GET /cadastro_questos/1/edit
  def edit
  end

  # POST /cadastro_questos
  # POST /cadastro_questos.json
  def create
    @cadastro_questo = CadastroQuesto.new(cadastro_questo_params)

    respond_to do |format|
      if @cadastro_questo.save
        format.html { redirect_to @cadastro_questo, notice: 'Cadastro questo was successfully created.' }
        format.json { render :show, status: :created, location: @cadastro_questo }
      else
        format.html { render :new }
        format.json { render json: @cadastro_questo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadastro_questos/1
  # PATCH/PUT /cadastro_questos/1.json
  def update
    respond_to do |format|
      if @cadastro_questo.update(cadastro_questo_params)
        format.html { redirect_to @cadastro_questo, notice: 'Cadastro questo was successfully updated.' }
        format.json { render :show, status: :ok, location: @cadastro_questo }
      else
        format.html { render :edit }
        format.json { render json: @cadastro_questo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastro_questos/1
  # DELETE /cadastro_questos/1.json
  def destroy
    @cadastro_questo.destroy
    respond_to do |format|
      format.html { redirect_to cadastro_questos_url, notice: 'Cadastro questo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro_questo
      @cadastro_questo = CadastroQuesto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadastro_questo_params
      params.require(:cadastro_questo).permit(:enunciado, :titulo, :resposta1, :resposta2, :resposta3, :resposta4, :resposta5, :correta, :disciplina)
    end
end
