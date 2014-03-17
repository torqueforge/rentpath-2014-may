# Object-Oriented Design Class

## Setup

Clone this repository:

```bash
$ git glone https://github.com/torqueforge/$NAME_OF_CLASS.git
```

Change directories so that you are in the project:

```bash
$ cd $NAME_OF_CLASS
```

Install the dependencies:

```bash
$ gem install bundler # if you don't have it
$ bundle install
```

## Exercises

As the class progresses we will add exercises and solutions to
the master branch.

Each exercise is in its own subdirectory, and has its own README.

## Working on the exercises

Start on master.

```bash
$ git checkout master
```

If you want to save your work, create a branch from master each time
you start working on a new exercise:

```bash
$ git checkout -b my-new-branch
```

When you've gotten your test suite to pass, commit the changes:

```bash
$ git commit -m "Explain your change here"
```

When you start working on a new section, switch back to master.

```bash
$ git checkout master
```

Then pull the latest version from GitHub:

```bash
$ git pull
```

Then create a new branch.

Wash. Rinse. Repeat.
