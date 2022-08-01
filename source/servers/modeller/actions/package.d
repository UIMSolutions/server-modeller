module servers.modeller.actions;

@safe:
import servers.modeller;

mixin(ActionCalls!("uimApis", "MDLApi", "thisServer"));
mixin(ActionCalls!("uimApps", "MDLApp", "thisServer"));
mixin(ActionCalls!("uimAttributes", "MDLAttribute", "thisServer"));
mixin(ActionCalls!("uimClasses", "MDLClass", "thisServer"));
mixin(ActionCalls!("uimComponents", "MDLComponent", "thisServer"));
mixin(ActionCalls!("uimControls", "MDLControl", "thisServer"));
mixin(ActionCalls!("uimElements", "MDLElement", "thisServer"));
mixin(ActionCalls!("uimEntities", "MDLEntity", "thisServer"));
mixin(ActionCalls!("uimInterfaces", "MDLInterface", "thisServer"));
mixin(ActionCalls!("uimLibraries", "MDLLibrary", "thisServer"));
mixin(ActionCalls!("uimMethods", "MDLMethod", "thisServer"));
mixin(ActionCalls!("uimModels", "MDLModel", "thisServer"));
mixin(ActionCalls!("uimModules", "MDLModule", "thisServer"));
mixin(ActionCalls!("uimPackages", "MDLPackage", "thisServer"));