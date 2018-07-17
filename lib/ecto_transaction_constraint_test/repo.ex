defmodule EctoTransactionConstraintTest.Repo do
  use Ecto.Repo,
    otp_app: :ecto_transaction_constraint_test,
    adapter: Ecto.Adapters.Postgres
end
