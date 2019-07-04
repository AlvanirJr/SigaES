class AlunosController < ApplicationController
  before_action :set_aluno, only: [:show, :edit, :update, :destroy]


  def index
    if !user_signed_in?
      redirect_to entrar_path
    end
    @alunos = Aluno.all

  end

  def show
    if !user_signed_in?
      redirect_to entrar_path
    end
  end

  # GET /alunos/new
  def new
    if !user_signed_in?
      redirect_to entrar_path
    end
    @aluno = Aluno.new
  end

  # GET /alunos/1/edit
  def edit
    if !user_signed_in?
      redirect_to entrar_path
    end
  end

  # POST /alunos
  # POST /alunos.json
  def create
    if !user_signed_in?
      redirect_to entrar_path
    end
    @aluno = Aluno.new(aluno_params)

    respond_to do |format|
      if @aluno.save
        format.html { redirect_to @aluno, notice: 'Aluno was successfully created.' }
        format.json { render :show, status: :created, location: @aluno }
      else
        format.html { render :new }
        format.json { render json: @aluno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alunos/1
  # PATCH/PUT /alunos/1.json
  def update
    if !user_signed_in?
      redirect_to entrar_path
    end
    respond_to do |format|
      if @aluno.update(aluno_params)
        format.html { redirect_to @aluno, notice: 'Aluno was successfully updated.' }
        format.json { render :show, status: :ok, location: @aluno }
      else
        format.html { render :edit }
        format.json { render json: @aluno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alunos/1
  # DELETE /alunos/1.json
  def destroy
    if !user_signed_in?
      redirect_to entrar_path
    end
    @aluno.destroy
    respond_to do |format|
      format.html { redirect_to alunos_url, notice: 'Aluno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aluno
      @aluno = Aluno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aluno_params
      params.require(:aluno).permit(:nome, :email, :cpf)
    end
end
