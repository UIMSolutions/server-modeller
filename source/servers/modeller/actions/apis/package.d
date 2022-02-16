module servers.modeller.actions.apis;

@safe:
import servers.modeller;
import servers.modeller.settings.api;
import models.modeller.entities.api;

void uimApisCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimApisCreateAction~":uimApisCreateAction");

  MDLAction_CreateApi(serverModeller).request(req, res);
}

void uimApisUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimApisUpdateAction~":uimApisUpdateAction");

  MDLAction_UpdateApi(serverModeller).request(req, res);
}

void uimApisDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimApisDeleteAction~":uimApisDeleteAction");

  MDLAction_DeleteApi(serverModeller).request(req, res);
}
