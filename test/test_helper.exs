ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Toolbox.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Toolbox.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Toolbox.Repo)

