defmodule DesafioApi.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:user, primary_key: false) do
      add(:user_id, :uuid, primary_key: true)
      add(:user_name, :string)
      add(:user_email, :string)
      add(:user_password, :string)

      timestamps()
    end
  end
end
