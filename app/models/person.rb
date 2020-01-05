# frozen_string_literal: true

# == Schema Information
#
# Table name: people
#
#  id         :bigint           not null, primary key
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  team_id    :bigint
#
# Indexes
#
#  index_people_on_name  (name) UNIQUE
#

# A person, a member of the company
class Person < ApplicationRecord
  belongs_to :team, optional: true

  def set_team
    return if team_id.present?

    base_counts = team_counts
    counts_in_use = base_counts.select { |x| x[1] < base_counts[0][1] + 2 }
    self.team_id = counts_in_use.sample[0]
  end

  private

  def team_counts
    Person
      .joins(:team)
      .group(:team_id)
      .order('2 ASC, 1 ASC')
      .pluck(:team_id, Arel.sql('count(*)'))
  end
end
