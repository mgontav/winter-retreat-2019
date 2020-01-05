# frozen_string_literal: true

class AssignController < ApplicationController
  def index
    @people = Person.all.order(id: :asc)
  end

  def show; end
end
