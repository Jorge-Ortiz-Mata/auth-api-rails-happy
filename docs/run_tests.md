# Run Tests.

In order to run your tests you will need to do a couple of things:

1. Run tests with following command:

```bash
$ rspec spec/
```

2. It's probably you get the following error:

```bash
An error occurred while loading ./spec/models/authentication_token_spec.rb.
Failure/Error: ActiveRecord::Migration.maintain_test_schema!

ActiveRecord::NoDatabaseError:
  We could not find your database: workspace_icalialabs_com_test. Which can be found in the database configuration file located at config/database.yml.

  To resolve this issue:

  - Did you create the database for this app, or delete it? You may need to create your database.
  - Has the database name changed? Check your database.yml config has the correct database name.

  To create your database, run:

          bin/rails db:create
```

3. You need to create the database for testing:

```bash
$ rails db:create db:migrate RAILS_ENV=test
```

4. Execute the rspec command again:

```bash
$ rspec spec/
```

5. Now you will get the following result.

```bash
Finished in 3.49 seconds (files took 7.12 seconds to load)
25 examples, 0 failures

Randomized with seed 32588
```

That's it.
