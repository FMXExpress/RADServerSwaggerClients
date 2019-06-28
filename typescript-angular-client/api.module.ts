import { NgModule, ModuleWithProviders, SkipSelf, Optional } from '@angular/core';
import { Configuration } from './configuration';
import { HttpClient } from '@angular/common/http';


import { ApiDocService } from './api/apiDoc.service';
import { EdgeModulesService } from './api/edgeModules.service';
import { EdgeModulesInvokersService } from './api/edgeModulesInvokers.service';
import { GroupsService } from './api/groups.service';
import { InstallationsService } from './api/installations.service';
import { PushService } from './api/push.service';
import { UsersService } from './api/users.service';
import { VersionService } from './api/version.service';

@NgModule({
  imports:      [],
  declarations: [],
  exports:      [],
  providers: [
    ApiDocService,
    EdgeModulesService,
    EdgeModulesInvokersService,
    GroupsService,
    InstallationsService,
    PushService,
    UsersService,
    VersionService ]
})
export class ApiModule {
    public static forRoot(configurationFactory: () => Configuration): ModuleWithProviders {
        return {
            ngModule: ApiModule,
            providers: [ { provide: Configuration, useFactory: configurationFactory } ]
        };
    }

    constructor( @Optional() @SkipSelf() parentModule: ApiModule,
                 @Optional() http: HttpClient) {
        if (parentModule) {
            throw new Error('ApiModule is already loaded. Import in your base AppModule only.');
        }
        if (!http) {
            throw new Error('You need to import the HttpClientModule in your AppModule! \n' +
            'See also https://github.com/angular/angular/issues/20575');
        }
    }
}
