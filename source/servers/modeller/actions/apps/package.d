module servers.modeller.actions.apps;

@safe:
import servers.modeller;
import servers.modeller.settings.app;
import models.modeller.entities.app;

void uimAppsCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAppsCreateAction~":uimAppsCreateAction");

  MDLAction_CreateApp(serverModeller).request(req, res);
}

void uimAppsUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAppsUpdateAction~":uimAppsUpdateAction");

  MDLAction_UpdateApp(serverModeller).request(req, res);
}

void uimAppsDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAppsDeleteAction~":uimAppsDeleteAction");

  MDLAction_DeleteApp(serverModeller).request(req, res);
}
