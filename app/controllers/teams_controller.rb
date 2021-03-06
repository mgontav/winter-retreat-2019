# frozen_string_literal: true

# Controller used to show team rosters
class TeamsController < ApplicationController
  def index
    @teams = Team.includes(:people).sort_by {
      |team| team.score
    }.reverse
  end
end
