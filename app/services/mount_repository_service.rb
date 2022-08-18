# frozen_string_literal: true

class MountRepositoryService < ApplicationService
  attr_reader :rep

  def initialize(rep)
    @rep = rep
  end

  def call
    mount_repository
  end

  private

  def mount_repository
    repository = Repository.new
    repository.id = @rep['id']
    repository.name = @rep['name']

    repository
  end
end
