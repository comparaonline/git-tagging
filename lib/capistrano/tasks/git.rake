namespace :git do

  task :push_deploy_tag do
    on roles(:git) do
      with rails_env: :production do
        user = `git config --get user.name`.chomp
        email = `git config --get user.email`.chomp
        stage = fetch(:stage)

        info `git tag #{stage}-week#{Date.today.cweek-1}.#{release_timestamp} -m "Deployed by #{user} <#{email}>"`
        info `git push --tags origin`
      end
    end
  end

end