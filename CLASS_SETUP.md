The steps to use this to create the repository for a specific class are:

1. Create a new repository in the torqueforge organization: https://github.com/organizations/torqueforge/repositories/new
2. Grab the git url for the new repository (e.g. git@github.com:torqueforge/careerbuilder-2014-april.git)
3. Run the duplication script, e.g.

```bash
bin/duplicate atl git@github.com:torqueforge/careerbuilder-2014-april.git
```

The first argument is the remote name, the second is the git url.

