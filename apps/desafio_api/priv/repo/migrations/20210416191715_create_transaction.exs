defmodule DesafioApi.Repo.Migrations.CreateTransaction do
  use Ecto.Migration

  def change do
    create table(:transaction, primary_key: false) do
      add(:transaction_user_id_origin, references(:user, type: :uuid))
      add(:transaction_user_id_destiny, references(:user, type: :uuid))
      add(:transaction_account_number_origin, references(:account, type: :uuid))
      add(:transaction_account_number_destiny, references(:account, type: :uuid))
      add(:transaction_date_and_hour, :utc_datetime)
      add(:transaction_amount_transfer, :float)

      timestamps()
    end

    create(index(:transaction, [:transaction_user_id_origin]))
    create(index(:transaction, [:transaction_user_id_destiny]))
    create(index(:transaction, [:transaction_account_number_origin]))
    create(index(:transaction, [:transaction_account_number_destiny]))
  end
end
