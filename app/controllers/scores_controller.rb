# frozen_string_literal: true

# Team scores
class ScoresController < ApplicationController
  def index
    @teams = Team.includes(:challenges).sort_by {
      |team| team.score
    }.reverse
  end
end
