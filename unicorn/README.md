# Unicorn

A simple introduction to Ruby and Test-Driven Development (TDD).

### Test Suite

A failing test suite is provided in `./test/unicorn_test.rb`.

Your mission, should you choose to accept it, is to make the tests pass.

The test suite can be run with the following command:

```plain
$ ruby test/unicorn_test.rb
```

All but the first test have been marked pending using the `skip` method.
This means that they will not spew error messages at you, even if they're
not passing. To get a test to run and show you the error message, delete
the `skip`.

To run a single test, use the name of the test:

```plain
$ ruby test/unicorn_test.rb --name test_it_has_a_name
```
