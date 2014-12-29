git-tagging
===========

Adds a tag to the repository being deploy (with Capistrano) with the format: `#{stage}-week#{Date.today.cweek-1}.#{release_timestamp}`

Instructions
------------

Add the gem to your Gemfile:

```
gem 'git-tagging'
```

In your Capfile add

```
require 'capistrano/git-tagging'
```

In your deploy.rb add

```
after 'deploy:restart', 'git:push_deploy_tag'
```

And add the git role to all stages you want git tags to be creted

Developing
----------

This project was made using the Jeweler (https://https://github.com/technicalpickles/jeweler) Gem.

Contributing to git-tagging
---------------------------
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
---------

Copyright (c) 2014 Mario Lavandero. See LICENSE.txt for
further details.

