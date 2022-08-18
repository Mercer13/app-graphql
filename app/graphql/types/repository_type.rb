# frozen_string_literal: true

module Types
  class RepositoryType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :repository_list, String, null: false
  end
end
