# frozen_string_literal: true

# Controller used to show team rosters
class TeamsController < ApplicationController
  def index
    @teams = Team.includes(:people).order(id: :asc)
  end
end
