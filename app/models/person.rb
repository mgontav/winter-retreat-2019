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
end
