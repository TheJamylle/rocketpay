defmodule Rocketpay do
  allias Rocketpay.Users.Create, UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
