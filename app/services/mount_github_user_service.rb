# frozen_string_literal: true

class MountGithubUserService < ApplicationService
  include HTTParty
  attr_reader :item

  def initialize(item)
    @item = item
  end

  def call
    response = self.class.get("https://api.github.com/users/#{@item['login']}/repos")

    mount_github_user(response.parsed_response)
  end

  private

  def mount_github_user(response)
    github_user = GithubUser.new

    github_user.id = @item['id']
    github_user.name = @item['name']
    github_user.repository_list = []

    response.each do |rep|
      repository = MountRepositoryService.call(rep)
      github_user.repository_list << repository.name
    end

    github_user
  end
end
