module servers.modeller.actions.packages;

@safe:
import servers.modeller;
import servers.modeller.settings.model;
import packages.modeller.entities.model;

void uimPackagesCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimPackagesCreateAction~":uimPackagesCreateAction");

  auto action = MDLAction_CreateModel(serverModeller);
  action.request(req, res);
}

void uimPackagesUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimPackagesUpdateAction~":uimPackagesUpdateAction");

  auto action = MDLAction_UpdateModel(serverModeller);
  action.request(req, res);
}

void uimPackagesDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimPackagesDeleteAction~":uimPackagesDeleteAction");

  auto action = MDLAction_DeleteModel(serverModeller);
  action.request(req, res);
}
