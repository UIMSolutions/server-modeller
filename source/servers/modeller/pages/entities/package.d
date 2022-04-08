module servers.modeller.pages.entities;

@safe:
import servers.modeller;

mixin(PageControllerCalls!("uimApis", "MDLApis", "serverModeller"));
mixin(PageControllerCalls!("uimApps", "MDLApps", "serverModeller"));
mixin(PageControllerCalls!("uimAttributeClasses", "MDLAttributeClasses", "serverModeller"));
mixin(PageControllerCalls!("uimAttributes", "MDLAttributes", "serverModeller"));
mixin(PageControllerCalls!("uimClasses", "MDLClasses", "serverModeller"));
mixin(PageControllerCalls!("uimComponents", "MDLComponents", "serverModeller"));
mixin(PageControllerCalls!("uimEntityClasses", "MDLEntityClasses", "serverModeller"));
mixin(PageControllerCalls!("uimInterfaces", "MDLInterfaces", "serverModeller"));
mixin(PageControllerCalls!("uimLibraries", "MDLLibraries", "serverModeller"));
mixin(PageControllerCalls!("uimMethods", "MDLMethods", "serverModeller"));
mixin(PageControllerCalls!("uimModels", "MDLModels", "serverModeller"));
mixin(PageControllerCalls!("uimModules", "MDLModules", "serverModeller"));
mixin(PageControllerCalls!("uimPackages", "MDLPackages", "serverModeller"));