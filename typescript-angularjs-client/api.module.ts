import * as api from './api/api';
import * as angular from 'angular';

const apiModule = angular.module('api', [])
.service('ApiDocApi', api.ApiDocApi)
.service('EdgeModulesApi', api.EdgeModulesApi)
.service('EdgeModulesInvokersApi', api.EdgeModulesInvokersApi)
.service('GroupsApi', api.GroupsApi)
.service('InstallationsApi', api.InstallationsApi)
.service('PushApi', api.PushApi)
.service('UsersApi', api.UsersApi)
.service('VersionApi', api.VersionApi)

export default apiModule;
