module servers.modeller.actions;

@safe:
import servers.modeller;

mixin(ActionCalls!("uimApis", "MDLApi", "serverModeller"));
mixin(ActionCalls!("uimApps", "MDLApp", "serverModeller"));
mixin(ActionCalls!("uimAttributeClasses", "MDLAttributeClass", "serverModeller"));
mixin(ActionCalls!("uimAttributes", "MDLAttribute", "serverModeller"));
mixin(ActionCalls!("uimClasses", "MDLClass", "serverModeller"));
mixin(ActionCalls!("uimComponents", "MDLComponent", "serverModeller"));
mixin(ActionCalls!("uimEntityClasses", "MDLEntityClass", "serverModeller"));
mixin(ActionCalls!("uimInterfaces", "MDLInterface", "serverModeller"));
mixin(ActionCalls!("uimLibraries", "MDLLibrary", "serverModeller"));
mixin(ActionCalls!("uimMethods", "MDLMethod", "serverModeller"));
mixin(ActionCalls!("uimModels", "MDLModel", "serverModeller"));
mixin(ActionCalls!("uimModules", "MDLModule", "serverModeller"));
mixin(ActionCalls!("uimPackages", "MDLPackage", "serverModeller"));