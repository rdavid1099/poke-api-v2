# Contributing

Thank you for your interest in contributing! We welcome developers of all skill levels to contribute to Poke-Api-V2 and will provide issues for those new to open-source and veterans alike. All tasks that we are looking to complete can be found in the [Issues](https://github.com/rdavid1099/poke-api-v2/issues) section. If you find a bug or would like to implement new functionality, please feel free to open an issue or contact the owner directly at [rdavid1099@gmail.com](mailto:rdavid1099@gmail.com).

## Installation

- Fork and clone Poke-Api-V2 to your local machine, use [this guide](https://help.github.com/articles/fork-a-repo/) if you don't know how to do that.
- Set the upstream remote so you can keep your copy of Poke-Api-V2 synced with the original. To do that go to your terminal and `cd` into your cloned `poke-api-v2` directory. Then user one of the following commands:

   If you have ssh set up with Git
   ```
   $ git remote add upstream git@github.com:rdavid1099/poke-api-v2.git
   ```
   Otherwise
   ```
   $ git remote add upstream https://github.com/rdavid1099/poke-api-v2.git
   ```

- From the root directory run `bundle install` to install all gem dependencies.
- Run `rake` to run all tests.

## Code Style

While we encourage creativity and clever, performant code, your implementation must follow basic Ruby standards and practices. This project is wired with CodeClimate, Rubocop and Reek. All PRs must pass these checks to be merged into production. As a rule of thumb, all contributors are encouraged to:

- Write readable and succinct code, and use standard functions in Ruby to the best of your knowledge.
- Blank lines should contain no spaces, and there should be no additional white space following the end of a line of code.
- Follow the [DRY](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself) principle.
- Run `reek` and `rubocop` before committing any work.
- Have fun!

If you are familiar with and use git hooks, we strongly encourage you to add the following block of code to your project's `pre-commit` hook. You can learn more about git hooks [here](https://githooks.com/).

```
EXIT=0

FILES=$(git diff --name-only HEAD)

rubocop $(echo $FILES) --force-exclusion
EXIT1=$?
reek $(echo $FILES)
EXIT2=$?

[ $EXIT1 -gt 0 -o $EXIT2 -gt 0 ] && EXIT=1

[ $EXIT -eq 1 ] && echo 'Unable to commit. Fix issues above.'

exit $EXIT
```

## Testing

Tests are imperative to creating a functional and successful application. We strive to have 100% test coverage across the codebase. Our test suite uses [RSpec](http://rspec.info/documentation/) and should follow basic RSpec formatting and style. All features/ bugs must include coinciding tests to confirm their functionality.

### Running Tests

Run `rake` or `rspec` to run all tests in test suite.

## Documentation

We are in the process of adding documentation using `YARD`. Please stay tuned for updates when that is ready.

## Pull Requests

All branches should be based off the `dev` branch and written using the following format, `<labe>/<issue number>-<summary of issue>` (ex: `chore/142-add-yard-for-documentation`). Before submitting a pull request, run `rake` in the top-level directory to verify that all tests are passing. Make your pull request to `dev` unless stated otherwise in the issue tracker. We will check for new pull requests at the end of every day and review/ comment on them as necessary.
