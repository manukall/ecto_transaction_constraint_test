defmodule EctoTransactionConstraintTest.User do
  use Ecto.Schema

  schema "users" do
    field(:email, :string, read_after_writes: true)
    has_many(:things, EctoTransactionConstraintTest.Thing)
  end
end
