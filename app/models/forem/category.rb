require 'friendly_id'

module Forem
  class Category < ApplicationRecord
    extend FriendlyId
    friendly_id :name, :use => [:slugged, :finders]

    has_many :forums
    validates :name, :presence => true

    def to_s
      name
    end

  end
end
