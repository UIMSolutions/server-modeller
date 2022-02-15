module servers.modeller.actions.libraries;

@safe:
import servers.modeller;
import servers.modeller.settings.model;
import models.modeller.entities.model;

void uimLibrariesCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimLibrariesCreateAction~":uimLibrariesCreateAction");

  MDLAction_CreateModel(serverModeller).request(req, res);
}

void uimLibrariesUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimLibrariesUpdateAction~":uimLibrariesUpdateAction");

  MDLAction_UpdateModel(serverModeller).request(req, res);
}

void uimLibrariesDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimLibrariesDeleteAction~":uimLibrariesDeleteAction");

  MDLAction_DeleteModel(serverModeller).request(req, res);
}
