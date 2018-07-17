use Mix.Config

config :ecto_transaction_constraint_test, EctoTransactionConstraintTest.Repo,
  database: "ecto_transaction_contraint_test_test",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  port: "5432",
  pool: Ecto.Adapters.SQL.Sandbox
