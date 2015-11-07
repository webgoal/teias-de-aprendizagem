class InterestsController < ApplicationController
  before_action :set_interest, only: [:show, :edit, :update, :destroy]
  before_action :set_learning_proposition, only: [:show, :edit, :update, :destroy, :new, :create]

  # GET /interests
  # GET /interests.json
  def index
    @interests = Interest.all
  end

  # GET /interests/1
  # GET /interests/1.json
  def show
  end

  # GET /interests/new
  def new
    @interest = Interest.new
  end

  # GET /interests/1/edit
  def edit
  end

  # POST /interests
  # POST /interests.json
  def create
    @interest = Interest.new(interest_params)
    @interest.learning_proposition = @learning_proposition
    respond_to do |format|
      if @interest.save
        format.html { redirect_to @learning_proposition, notice: 'Interesse foi criado com sucesso.' }

      else
        format.html { render :new }

      end
    end
  end

  # PATCH/PUT /interests/1
  # PATCH/PUT /interests/1.json
  def update
    respond_to do |format|
      if @interest.update(interest_params)
        format.html { redirect_to @learning_proposition, notice: 'Interesse foi atualizado.' }

      else
        format.html { render :edit }

      end
    end
  end

  # DELETE /interests/1
  # DELETE /interests/1.json
  def destroy
    @interest.destroy
    respond_to do |format|
      format.html { redirect_to interests_url, notice: 'Interesse foi deletado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interest
      @interest = Interest.find(params[:id])
    end

    def set_learning_proposition
      @learning_proposition = LearningProposition.find(params[:learning_proposition_id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def interest_params
      params.require(:interest).permit(:name, :email, :phone, :roles_mask, :learning_propositions_id)
    end
end
