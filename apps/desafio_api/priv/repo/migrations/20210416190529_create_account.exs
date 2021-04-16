defmodule DesafioApi.Repo.Migrations.CreateAccount do
  use Ecto.Migration

  def change do
    create table(:account, primary_key: false) do
      add(:account_number, :uuid, primary_key: true)
      add(:account_user_id, references(:user, type: :uuid))
      add(:account_bank_id, references(:bank, type: :uuid))
      add(:account_operation_id, references(:operation, type: :uuid))
      add(:account_total, :float)
      add(:account_transcation_history, :text)

      timestamps()
    end

    create(index(:account, [:account_user_id]))
    create(index(:account, [:account_bank_id]))
    create(index(:account, [:account_operation_id]))
  end
end
