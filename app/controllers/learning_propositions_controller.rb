class LearningPropositionsController < ApplicationController
  def index
    @learning_propositions = LearningProposition.all
  end

  def show
    @learning_proposition= LearningProposition.find(params[:id])
  end
  def new
  end
end
