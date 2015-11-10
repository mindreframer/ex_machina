defmodule ExMachina.TestRepo.Migrations.AddParents do
  use Ecto.Migration

  def change do
    create table(:grand_parents) do
      add :name, :string
      add :child_id, :integer
    end

    create table(:parents) do
      add :name, :string
      add :child_id, :integer
      add :parent_id, :integer
    end

    create table(:children) do
      add :name, :string
      add :parent_id, :integer
    end
  end
end
