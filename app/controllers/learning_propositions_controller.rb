class LearningPropositionsController < ApplicationController
  def index
    @learning_propositions_open = LearningProposition.find_open
    @learning_propositions_close = LearningProposition.find_close
  end

  def show
    @learning_proposition= LearningProposition.find(params[:id])
  end

  def new
    @learning_proposition = LearningProposition.new

  end

  def create
    @learning_proposition = LearningProposition.new(learning_proposition_params)

    respond_to do |format|
      if @learning_proposition.save
        format.html { redirect_to @learning_proposition, notice: 'Proposta foi criada com sucesso.' }

      else
        format.html { render :new }

      end
    end
  end

  def delete
    @learning_proposition = LearningProposition.find(delete_learning_proposition_params[:id])
    @learning_proposition.safe_destroy(delete_learning_proposition_params[:password])
  end

  private
  def learning_proposition_params
    params.require(:learning_proposition).permit(:name, :description, :min_attendees, :max_attendees, :location, :session_date, :password)
  end

  def delete_learning_proposition_params
    params.require(:learning_proposition).permit(:password, :id)
  end
end
