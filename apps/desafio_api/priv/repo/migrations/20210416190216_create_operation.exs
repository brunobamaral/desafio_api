defmodule DesafioApi.Repo.Migrations.CreateOperation do
  use Ecto.Migration

  def change do
    create table(:operation, primary_key: false) do
      add(:operation_id, :uuid, primary_key: true)
      add(:operation_name, :string)

      timestamps()
    end
  end
end
