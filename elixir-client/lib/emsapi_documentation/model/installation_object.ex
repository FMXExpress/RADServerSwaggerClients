# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule EMSAPIDocumentation.Model.InstallationObject do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"_id",
    :"deviceToken",
    :"deviceType",
    :"_meta",
    :"channels"
  ]

  @type t :: %__MODULE__{
    :"_id" => String.t,
    :"deviceToken" => String.t,
    :"deviceType" => String.t,
    :"_meta" => MetaInstallationObject,
    :"channels" => [String.t]
  }
end

defimpl Poison.Decoder, for: EMSAPIDocumentation.Model.InstallationObject do
  import EMSAPIDocumentation.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"_meta", :struct, EMSAPIDocumentation.Model.MetaInstallationObject, options)
  end
end
