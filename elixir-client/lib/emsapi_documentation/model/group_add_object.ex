# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule EMSAPIDocumentation.Model.GroupAddObject do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"groupname"
  ]

  @type t :: %__MODULE__{
    :"groupname" => String.t
  }
end

defimpl Poison.Decoder, for: EMSAPIDocumentation.Model.GroupAddObject do
  def decode(value, _options) do
    value
  end
end

