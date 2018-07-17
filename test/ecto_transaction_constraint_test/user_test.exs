defmodule EctoTransactionConstraintTest.UserTest do
  use ExUnit.Case
  alias EctoTransactionConstraintTest.{User, Repo}

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
  end

  test "transaction constraint" do
    import Ecto.Changeset

    Repo.transaction(fn ->
      change(%User{}, email: "user@example.com")
      |> unique_constraint(:email)
      |> Repo.insert()
    end)

    assert {:ok, {:error, %Ecto.Changeset{}}} =
             Repo.transaction(fn ->
               change(%User{}, email: "user@example.com")
               |> unique_constraint(:email)
               |> Repo.insert()
             end)
  end
end
