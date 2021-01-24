# Notes

## Accessing private repo

We are considering storing the testing suites in a private repo as a way of preventing users from simply accessing the code directly and thus evading any requirement to actually develop their own code.

Job 1 in implementing that approach is being able to access a (separate/different) private repo from a GitHub Action. The key elements of the GitHub Action required are as follows:

```yaml
jobs:
  build:
   # ...other stuff here...
    steps:
      - name: Access contents of private repo  # You can call this whatever you want
        uses: actions/checkout@v2  # This refers to the GitHub Action. Nothing to do with your target repo
        with:
          repository: TSSlade/autograder_secrets  # This is your target repo. Uses `orgname/reponame` format
          token: ${{ secrets.w241_autograder }}  # This is your PAT (personal access token). Uses `secrets.your-PAT-name-here` format
```

The critical piece which is not self-evident or easily Google-able (but I found ❇ [here](https://upptime.js.org/docs/get-started/#after-creating-your-repository) ❇) is that you need to specifically add your **PAT** to the _source_ repo of the GitHub Action. ([This StackOverflow respondent](https://stackoverflow.com/a/39530966) apparently had a similarly mystifying experience.) 😡

Once you've created your PAT (and saved it elsewhere, please!!), you add it to your repo like so:

1. Go to your repo's `Settings` tab
    > ![GitHub Settings Interface](img/github-settings.png?raw=true)
2. Select the `Secrets` option in the left navbar
    > ![GitHub Settings > Secrets Interface](img/add-secrets-to-repo.png?raw=true)
3. Select the `New repository secret` button in the top-right corner
    > ![GitHub Settings > Secrets > New repository secret Interface](img/secret-adding-interface.png?raw=true)
4. Add in the name you're going to enter in that `${{ secrets.your-PAT-name-here }}` line in the YAML file, then paste the token itself into the next field


Docs consulted along the way:
+ [GitHub Actions Docs: Creating a Personal Access Token](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token) 👍🏻
+ [GitHub Actions Docs: Authentication in a Workflow](https://docs.github.com/en/actions/reference/authentication-in-a-workflow) 👎🏻

