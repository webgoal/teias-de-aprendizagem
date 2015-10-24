class LearningPropositionsController < ApplicationController
  def index
    @learning_propositions = LearningProposition.all
  end

  def show
  end
end
