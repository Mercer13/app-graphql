class CreateGithubUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :github_users do |t|

      t.timestamps
    end
  end
end
