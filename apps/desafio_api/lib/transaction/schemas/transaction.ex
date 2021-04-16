defmodule DesafioApi.Transaction.Schemas.Transaction do
  @moduledoc """
  Transaction entity scheme
  """
  use Ecto.Schema

  alias DesafioApi.User.Schemas.User
  alias DesafioApi.Account.Schemas.Account

  schema "transaction" do
    belongs_to(:transaction_user_id_origin, User)
    belongs_to(:transaction_user_id_destiny, User)
    belongs_to(:transaction_account_number_origin, Account)
    belongs_to(:transaction_account_number_destiny, Account)

    field(:transaction_date_and_hour, :utc_datetime)
    field(:transaction_amount_transfer, :float)
  end
end
