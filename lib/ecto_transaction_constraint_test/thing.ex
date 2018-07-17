defmodule EctoTransactionConstraintTest.Thing do
  use Ecto.Schema

  schema "things" do
    belongs_to(:user, EctoTransactionConstraintTest.User)
  end
end
