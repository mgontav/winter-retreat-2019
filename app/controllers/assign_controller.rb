# frozen_string_literal: true

# Controller for people management
class AssignController < ApplicationController
  def index
    @people = Person.all.order(id: :asc)
  end

  def show
    @person = Person.includes(:team).find(params[:id])
    @person.confirm_team
    @team = @person.team
    @sentences = Sentence.all.pluck(:content).sample(4)
  end
end
