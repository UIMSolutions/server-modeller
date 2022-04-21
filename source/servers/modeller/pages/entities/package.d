module servers.modeller.pages.entities;

@safe:
import servers.modeller;

mixin(PageControllerCalls!("uimApis", "MDLApis", "thisServer"));
mixin(PageControllerCalls!("uimApps", "MDLApps", "thisServer"));
mixin(PageControllerCalls!("uimAttributeClasses", "MDLAttributeClasses", "thisServer"));
mixin(PageControllerCalls!("uimAttributes", "MDLAttributes", "thisServer"));
mixin(PageControllerCalls!("uimClasses", "MDLClasses", "thisServer"));
mixin(PageControllerCalls!("uimComponents", "MDLComponents", "thisServer"));
mixin(PageControllerCalls!("uimEntityClasses", "MDLEntityClasses", "thisServer"));
mixin(PageControllerCalls!("uimInterfaces", "MDLInterfaces", "thisServer"));
mixin(PageControllerCalls!("uimLibraries", "MDLLibraries", "thisServer"));
mixin(PageControllerCalls!("uimMethods", "MDLMethods", "thisServer"));
mixin(PageControllerCalls!("uimModels", "MDLModels", "thisServer"));
mixin(PageControllerCalls!("uimModules", "MDLModules", "thisServer"));
mixin(PageControllerCalls!("uimPackages", "MDLPackages", "thisServer"));