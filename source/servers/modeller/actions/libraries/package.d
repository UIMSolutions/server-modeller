module servers.modeller.actions.libraries;

@safe:
import servers.modeller;
import servers.modeller.settings.model;
import libraries.modeller.entities.model;

void uimLibrariesCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimLibrariesCreateAction~":uimLibrariesCreateAction");

  auto action = MDLAction_CreateModel(serverModeller);
  action.request(req, res);
}

void uimLibrariesUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimLibrariesUpdateAction~":uimLibrariesUpdateAction");

  auto action = MDLAction_UpdateModel(serverModeller);
  action.request(req, res);
}

void uimLibrariesDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimLibrariesDeleteAction~":uimLibrariesDeleteAction");

  auto action = MDLAction_DeleteModel(serverModeller);
  action.request(req, res);
}
