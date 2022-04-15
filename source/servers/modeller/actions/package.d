module servers.modeller.actions;

@safe:
import servers.modeller;

mixin(ActionCalls!("uimApis", "MDLApi", "server"));
mixin(ActionCalls!("uimApps", "MDLApp", "server"));
mixin(ActionCalls!("uimAttributeClasses", "MDLAttributeClass", "server"));
mixin(ActionCalls!("uimAttributes", "MDLAttribute", "server"));
mixin(ActionCalls!("uimClasses", "MDLClass", "server"));
mixin(ActionCalls!("uimComponents", "MDLComponent", "server"));
mixin(ActionCalls!("uimEntityClasses", "MDLEntityClass", "server"));
mixin(ActionCalls!("uimInterfaces", "MDLInterface", "server"));
mixin(ActionCalls!("uimLibraries", "MDLLibrary", "server"));
mixin(ActionCalls!("uimMethods", "MDLMethod", "server"));
mixin(ActionCalls!("uimModels", "MDLModel", "server"));
mixin(ActionCalls!("uimModules", "MDLModule", "server"));
mixin(ActionCalls!("uimPackages", "MDLPackage", "server"));