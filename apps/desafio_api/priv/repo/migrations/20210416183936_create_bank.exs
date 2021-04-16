defmodule DesafioApi.Repo.Migrations.CreateBank do
  use Ecto.Migration

  def change do
    create table(:bank, primary_key: false) do
      add(:bank_id, :uuid, primary_key: true)
      add(:bank_name, :string)

      timestamps()
    end
  end
end
