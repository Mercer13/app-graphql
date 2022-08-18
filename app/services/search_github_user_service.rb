# frozen_string_literal: true

class SearchGithubUserService < ApplicationService
  include HTTParty
  attr_reader :query

  def initialize(query)
    @query = query
  end

  def call
    response = self.class.get("https://api.github.com/users/#{@query}")

    process_response(response.parsed_response)
  end

  private

  def process_response(response)
    repoitory_list = []

    github_user = MountGithubUserService.call(response)
    repoitory_list << github_user

    repoitory_list
  end
end
