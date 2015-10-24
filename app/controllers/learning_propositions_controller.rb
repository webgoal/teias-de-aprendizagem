class LearningPropositionsController < ApplicationController
  def index
  end

  def show
    @proposta = LearningProposition.find(params[:id])
  end
end
