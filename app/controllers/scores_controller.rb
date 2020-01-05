# frozen_string_literal: true

# Team scores
class ScoresController < ApplicationController
  def index
    @teams = Team.all.order(score: :desc)
  end
end
