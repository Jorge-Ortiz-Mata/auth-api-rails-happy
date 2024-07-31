# Local Installation

In order to install the Workspace Icalialabs - Backend project locally, follow these steps:

1. Install Docker and VSCode in your local computer.

2. Install the [VSCode Dev Containers Extension](https://code.visualstudio.com/docs/devcontainers/tutorial).

3. Clone the repository in your local computer and open it using VSCode

```bash
git clone https://github.com/IcaliaLabs/workspace-icalialabs-com.git
```

4. Once is opened with VSCode, on Windows and Linux type **ctrl + shift + p** and select the option:
**Rebuild without cache and reopen in container** from the Dev Containers extension.

5. Wait until the container is created.

6. Once is ready, VSCode will be opened inside of your container. Open a new terminal and compile the
assets from Rails. Run the following command:

```
rails assets:precompile
```

7. Now, you can run the rails server and start coding :).

```
rails server
```

8. (Optional) You can add custom seeds in the db/custom_seeds/your_seeds_file.rb

```ruby
# in db/seeds.rb

load(Rails.root.join('db', 'custom_seeds', 'your_seeds_file.rb'))
```

You can now go to the [Getting Started Section](./getting_started.md) to continue.
