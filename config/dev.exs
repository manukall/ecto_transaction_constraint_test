use Mix.Config

config :ecto_transaction_constraint_test, EctoTransactionConstraintTest.Repo,
  database: "ecto_transaction_contraint_test_dev",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  port: "5432"
