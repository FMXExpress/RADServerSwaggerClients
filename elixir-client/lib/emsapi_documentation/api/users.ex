# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule EMSAPIDocumentation.Api.Users do
  @moduledoc """
  API calls for all endpoints tagged `Users`.
  """

  alias EMSAPIDocumentation.Connection
  import EMSAPIDocumentation.RequestBuilder


  @doc """
  Add User
   |      Used to add a new &#x60;User&#x60; object to the EMS database.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - body (UserCredentialsObject): Object to add a new EMS User in the EMS Server
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, %EMSAPIDocumentation.Model.UseridObject{}} on success
  {:error, info} on failure
  """
  @spec add_user(Tesla.Env.client, EMSAPIDocumentation.Model.UserCredentialsObject.t, keyword()) :: {:ok, EMSAPIDocumentation.Model.UseridObject.t} | {:error, Tesla.Env.t}
  def add_user(connection, body, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:post)
    |> url("/users")
    |> add_param(:body, :"body", body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%EMSAPIDocumentation.Model.UseridObject{})
  end

  @doc """
  Delete User
   |      Used to delete a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - id (String.t): A user ID
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_user(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_user(connection, id, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:delete)
    |> url("/users/#{id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Get User
   |      Used to retrieve all data from a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - id (String.t): A user ID
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, %EMSAPIDocumentation.Model.UserObject{}} on success
  {:error, info} on failure
  """
  @spec get_user(Tesla.Env.client, String.t, keyword()) :: {:ok, EMSAPIDocumentation.Model.UserObject.t} | {:error, Tesla.Env.t}
  def get_user(connection, id, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:get)
    |> url("/users/#{id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%EMSAPIDocumentation.Model.UserObject{})
  end

  @doc """
  Get Fields
   |      Used to retrieve all the &#x60;field names&#x60; of the EMS Users (including the custom fields).

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, [%FieldObject{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_user_fields(Tesla.Env.client, keyword()) :: {:ok, list(EMSAPIDocumentation.Model.FieldObject.t)} | {:error, Tesla.Env.t}
  def get_user_fields(connection, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:get)
    |> url("/users/fields")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%EMSAPIDocumentation.Model.FieldObject{}])
  end

  @doc """
  Get User Groups
   |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - id (String.t): A user ID
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, [%GroupName{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_user_groups(Tesla.Env.client, String.t, keyword()) :: {:ok, list(EMSAPIDocumentation.Model.GroupName.t)} | {:error, Tesla.Env.t}
  def get_user_groups(connection, id, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:get)
    |> url("/users/#{id}/groups")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%EMSAPIDocumentation.Model.GroupName{}])
  end

  @doc """
  Get Users
   |      Used to retrieve all data from &#x60;Users&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 
    - :skip (float()): users skipped
    - :limit (float()): maximum number of results to return
    - :order (float()): order ascending or descending (asc, desc)
    - :where (String.t): filter operators (lt, lte, gt, gte, eq, neq, like, nlike)

  ## Returns

  {:ok, [%UserObject{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_users(Tesla.Env.client, keyword()) :: {:ok, list(EMSAPIDocumentation.Model.UserObject.t)} | {:error, Tesla.Env.t}
  def get_users(connection, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers,
      :"skip" => :query,
      :"limit" => :query,
      :"order" => :query,
      :"where" => :query
    }
    %{}
    |> method(:get)
    |> url("/users")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%EMSAPIDocumentation.Model.UserObject{}])
  end

  @doc """
  Log In
   |      Logs in to the EMS Server with a specific EMS User.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - body (UserCredentialsObject): A user object
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, %EMSAPIDocumentation.Model.UserTokenObject{}} on success
  {:error, info} on failure
  """
  @spec login_user(Tesla.Env.client, EMSAPIDocumentation.Model.UserCredentialsObject.t, keyword()) :: {:ok, EMSAPIDocumentation.Model.UserTokenObject.t} | {:error, Tesla.Env.t}
  def login_user(connection, body, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:post)
    |> url("/users/login")
    |> add_param(:body, :"body", body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%EMSAPIDocumentation.Model.UserTokenObject{})
  end

  @doc """
  sPostLogoutSummaryTitle
  sPostLogoutSummaryDesc

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec logout_user(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def logout_user(connection, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:post)
    |> url("/users/logout")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Sign Up  User
   |      Signs up to the EMS Server with an appropriate EMS User.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - body (UserCredentialsObject): Object to sign up a new EMS User in the EMS Server
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, %EMSAPIDocumentation.Model.UserSignUpResponseObject{}} on success
  {:error, info} on failure
  """
  @spec signup_user(Tesla.Env.client, EMSAPIDocumentation.Model.UserCredentialsObject.t, keyword()) :: {:ok, EMSAPIDocumentation.Model.UserSignUpResponseObject.t} | {:error, Tesla.Env.t}
  def signup_user(connection, body, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:post)
    |> url("/users/signup")
    |> add_param(:body, :"body", body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%EMSAPIDocumentation.Model.UserSignUpResponseObject{})
  end

  @doc """
  Update User
   |      Used to update a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - id (String.t): A user ID
  - body (UpdateObject): Add any fieldName
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, %EMSAPIDocumentation.Model.UpdatedObject{}} on success
  {:error, info} on failure
  """
  @spec update_user(Tesla.Env.client, String.t, EMSAPIDocumentation.Model.UpdateObject.t, keyword()) :: {:ok, EMSAPIDocumentation.Model.UpdatedObject.t} | {:error, Tesla.Env.t}
  def update_user(connection, id, body, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:put)
    |> url("/users/#{id}")
    |> add_param(:body, :"body", body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%EMSAPIDocumentation.Model.UpdatedObject{})
  end
end