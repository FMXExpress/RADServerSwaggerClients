import {interfaces} from "inversify";

import { ApiDocService } from './api/apiDoc.service';
import { EdgeModulesService } from './api/edgeModules.service';
import { EdgeModulesInvokersService } from './api/edgeModulesInvokers.service';
import { GroupsService } from './api/groups.service';
import { InstallationsService } from './api/installations.service';
import { PushService } from './api/push.service';
import { UsersService } from './api/users.service';
import { VersionService } from './api/version.service';

export class ApiServiceBinder {
    public static with(container: interfaces.Container) {
        container.bind<ApiDocService>("ApiDocService").to(ApiDocService).inSingletonScope();
        container.bind<EdgeModulesService>("EdgeModulesService").to(EdgeModulesService).inSingletonScope();
        container.bind<EdgeModulesInvokersService>("EdgeModulesInvokersService").to(EdgeModulesInvokersService).inSingletonScope();
        container.bind<GroupsService>("GroupsService").to(GroupsService).inSingletonScope();
        container.bind<InstallationsService>("InstallationsService").to(InstallationsService).inSingletonScope();
        container.bind<PushService>("PushService").to(PushService).inSingletonScope();
        container.bind<UsersService>("UsersService").to(UsersService).inSingletonScope();
        container.bind<VersionService>("VersionService").to(VersionService).inSingletonScope();
    }
}
