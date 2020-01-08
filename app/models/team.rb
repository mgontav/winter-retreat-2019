# frozen_string_literal: true

# == Schema Information
#
# Table name: teams
#
#  id         :bigint           not null, primary key
#  color1     :string           default(""), not null
#  color2     :string           default(""), not null
#  creature   :string           default(""), not null
#  founder    :string           default(""), not null
#  name       :string           default(""), not null
#  values     :string           default([]), not null, is an Array
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_teams_on_name  (name) UNIQUE
#

# A team, like a house of Gryffindor
class Team < ApplicationRecord
  has_many :people, dependent: :destroy
  has_many :challenges, dependent: :nullify

  has_one_attached :avatar

  before_update :clean_empty_values

  def score
    challenges.inject(0.0) do |score, challenge| 
      score + challenge.score
    end
  end

  private

  def clean_empty_values
    values.reject!(&:blank?)
  end
end
