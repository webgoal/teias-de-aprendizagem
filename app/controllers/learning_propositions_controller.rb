class LearningPropositionsController < ApplicationController
  def index
    @learning_propositions = LearningProposition.all
  end

  def show
    @proposta = LearningProposition.find(params[:id])
  end
  def new
  end
end
