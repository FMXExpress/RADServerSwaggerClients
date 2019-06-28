use std::rc::Rc;

use hyper;
use super::configuration::Configuration;

pub struct APIClient<C: hyper::client::Connect> {
  configuration: Rc<Configuration<C>>,
  api_doc_api: Box<::apis::ApiDocApi>,
  edge_modules_api: Box<::apis::EdgeModulesApi>,
  edge_modules_invokers_api: Box<::apis::EdgeModulesInvokersApi>,
  groups_api: Box<::apis::GroupsApi>,
  installations_api: Box<::apis::InstallationsApi>,
  push_api: Box<::apis::PushApi>,
  users_api: Box<::apis::UsersApi>,
  version_api: Box<::apis::VersionApi>,
}

impl<C: hyper::client::Connect> APIClient<C> {
  pub fn new(configuration: Configuration<C>) -> APIClient<C> {
    let rc = Rc::new(configuration);

    APIClient {
      configuration: rc.clone(),
      api_doc_api: Box::new(::apis::ApiDocApiClient::new(rc.clone())),
      edge_modules_api: Box::new(::apis::EdgeModulesApiClient::new(rc.clone())),
      edge_modules_invokers_api: Box::new(::apis::EdgeModulesInvokersApiClient::new(rc.clone())),
      groups_api: Box::new(::apis::GroupsApiClient::new(rc.clone())),
      installations_api: Box::new(::apis::InstallationsApiClient::new(rc.clone())),
      push_api: Box::new(::apis::PushApiClient::new(rc.clone())),
      users_api: Box::new(::apis::UsersApiClient::new(rc.clone())),
      version_api: Box::new(::apis::VersionApiClient::new(rc.clone())),
    }
  }

  pub fn api_doc_api(&self) -> &::apis::ApiDocApi{
    self.api_doc_api.as_ref()
  }

  pub fn edge_modules_api(&self) -> &::apis::EdgeModulesApi{
    self.edge_modules_api.as_ref()
  }

  pub fn edge_modules_invokers_api(&self) -> &::apis::EdgeModulesInvokersApi{
    self.edge_modules_invokers_api.as_ref()
  }

  pub fn groups_api(&self) -> &::apis::GroupsApi{
    self.groups_api.as_ref()
  }

  pub fn installations_api(&self) -> &::apis::InstallationsApi{
    self.installations_api.as_ref()
  }

  pub fn push_api(&self) -> &::apis::PushApi{
    self.push_api.as_ref()
  }

  pub fn users_api(&self) -> &::apis::UsersApi{
    self.users_api.as_ref()
  }

  pub fn version_api(&self) -> &::apis::VersionApi{
    self.version_api.as_ref()
  }


}
