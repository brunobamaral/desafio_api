defmodule DesafioApi.Account.Schemas.Account do
  @moduledoc """
    Account entity schema
  """
  use Ecto.Schema

  alias DesafioApi.User.Schemas.User
  alias DesafioApi.Bank.Schemas.Bank
  alias DesafioApi.Operation.Schemas.Operation

  @primary_key {:account_number, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "account" do
    belongs_to(:account_user_id, User)
    belongs_to(:account_bank_id, Bank)
    belongs_to(:account_operation_id, Operation)

    field(:account_total, :float)
    field(:account_transaction_history, :string)
    timestamps()
  end
end
