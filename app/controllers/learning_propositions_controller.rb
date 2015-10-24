class LearningPropositionsController < ApplicationController
  def index
  end

  def show

  end

  def new
    @learning_proposition = LearningProposition.new

  end

  def create
    @learning_proposition = LearningProposition.new(learning_proposition_params)
    @learning_proposition.save
  end

  private
  def learning_proposition_params
    params.require(:learning_proposition).permit(:name, :description, :min_attendees, :max_attendees, :location, :session_date)
  end
end
