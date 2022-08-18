class GithubUser
    attr_accessor :id, :name, :repository_list

    def initialize(id = nil, name = nil, repository_list = nil)
      @id = id
      @name = name
      @repository_list = repository_list
    end
end
