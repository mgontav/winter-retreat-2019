# frozen_string_literal: true

# == Schema Information
#
# Table name: people
#
#  id         :bigint           not null, primary key
#  name       :string           default(""), not null
#  score      :decimal          default(0.0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  team_id    :bigint
#
# Indexes
#
#  index_challenge_on_name  (name) UNIQUE
#

class Challenge < ApplicationRecord
    belongs_to :team, optional: true
end