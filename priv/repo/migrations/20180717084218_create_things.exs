defmodule EctoTransactionConstraintTest.Repo.Migrations.CreateThings do
  use Ecto.Migration

  def change do
    create table(:things) do
      add(:user_id, references(:users))
    end
  end
end
