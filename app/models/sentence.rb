# frozen_string_literal: true

# == Schema Information
#
# Table name: sentences
#
#  id         :bigint           not null, primary key
#  content    :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sentence < ApplicationRecord
end
