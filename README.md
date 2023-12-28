# Crust 🍞

[![npm version](https://badge.fury.io/js/%40sassywares%2Fcrust.svg)](https://badge.fury.io/js/%40sassywares%2Fcrust) ![Builds](https://github.com/sassywares/crust/actions/workflows/release.yml/badge.svg)

Crust 🍞 is a simple boilerplate for creating and publishing packages to NPM. It includes a basic configuration for TypeScript, ESLint, Prettier, Vitest, and Changesets as well as a simple list of scripts for building, linting, testing and publishing your package.

## Features

- TypeScript
- ESLint
- Prettier
- Vitest
- Changesets
- NPM Scripts

## Getting Started

To get started with Crust 🍞, follow these steps:

1. Clone the Crust repository to your local machine:

```bash
git clone https://github.com/sassywares/crust.git
```

2. Alternatively, you can use the GitHub template feature to create a new repository from the Crust template.
3. Review the `package.json` file and make any necessary changes to the package name, version, description, and the additional information, leave the scripts for now.
4. Run `npm install` to install the dependencies.

## Scripts

Crust 🍞 includes a number of scripts for building, linting, testing, and publishing your package. The scripts are as follows:

- `lint` - Runs ESLint to lint the code.
- `lint:fix`: Runs ESLint with the `--fix` flag to automatically fix any linting errors.
- `test` - Runs Vitest to run the tests once.
- `test:watch` - Runs Vitest in watch mode.
- `format` - Runs `lint:fix` and Prettier to format the code.
- `dev` - Runs TypeScript in watch mode to build the code.
- `build` - Runs TypeScript to build the code, the output is placed in the `dist` directory. You can change the output directory by modifying the `outDir` property in the `tsconfig.json` file.
- `commit` - Adds all files to staging and commits them with a message, see .scripts/commit.sh for more information and to modify the commit message. This is intended to be used with the CI workflow, for normal commits use `git commit` normally.
- `push` - Pushes the current branch as well as the tags to the remote repository.
- `release.prepare` - Tests and builds the code for release.
- `release.publish` - Publishes the package to NPM.
- `release.version` - Creates a changelog using changeset, bumps the version, creates a git tag, commits the changelog, version, and tag as well as pushes them to remote.
- `release` - Runs `release.prepare`, `release.version`, and `release.publish` in sequence. Use this script to publish a new version of the package to NPM locally.
- `release.dry` - Runs `release` in dry mode, this will not publish the package to NPM.
- `clean` - Removes all generated files and directories as well as clears the NPM cache.

## Publishing

Crust 🍞 comes jam-packed with two ways to publish your package to NPM.

1. The first way is to use the `release` script. This script will run the `release.prepare`, `release.version`, and `release.publish` scripts in sequence. This script is intended to be used locally to publish a new version of the package to NPM.

2. The second way is to use the [GitHub Actions workflow](./.github/workflows/release.yml) included with Crust. This workflow will not version your package and runs only when you push a new tag to the main repo. You can modify this behavior by editing the `release.yml` file. To get started:
    - run `npm run release:version` on your terminal, this will create a new version and a new tag of the package and push it to the remote repository. The workflow monitors for new tags and will run when a new tag is pushed to the remote repository.
    - The workflow first creates a release for the tag on GitHub.
    - The workflow then runs the `release.prepare` and `release.publish` scripts in sequence, publishing the package to NPM.
    - Note the env variables in the workflow file, depending on your setup you may need to modify these variables.
    - You can read more about the environment variables [here](https://kashanahmad.me/blog/how-to-trigger-gh-actions-on-tag).

## Contributing

Crust 🍞 comes from the community for the community. We are always looking for ways to improve Crust and make it better. If you have any suggestions, ideas, or feedback, please open an issue or a pull request.

## License

Crust 🍞 is open source software released under the [MIT License](LICENSE). We encourage you to use, modify, and distribute Crust as you see fit.
