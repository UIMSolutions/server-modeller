module servers.modeller.pages.entities;

@safe:
import servers.modeller;

mixin(PageControllerCalls!("uimApis", "MDLApis", "server"));
mixin(PageControllerCalls!("uimApps", "MDLApps", "server"));
mixin(PageControllerCalls!("uimAttributeClasses", "MDLAttributeClasses", "server"));
mixin(PageControllerCalls!("uimAttributes", "MDLAttributes", "server"));
mixin(PageControllerCalls!("uimClasses", "MDLClasses", "server"));
mixin(PageControllerCalls!("uimComponents", "MDLComponents", "server"));
mixin(PageControllerCalls!("uimEntityClasses", "MDLEntityClasses", "server"));
mixin(PageControllerCalls!("uimInterfaces", "MDLInterfaces", "server"));
mixin(PageControllerCalls!("uimLibraries", "MDLLibraries", "server"));
mixin(PageControllerCalls!("uimMethods", "MDLMethods", "server"));
mixin(PageControllerCalls!("uimModels", "MDLModels", "server"));
mixin(PageControllerCalls!("uimModules", "MDLModules", "server"));
mixin(PageControllerCalls!("uimPackages", "MDLPackages", "server"));