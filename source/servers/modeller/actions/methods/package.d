module servers.modeller.actions.methods;

@safe:
import servers.modeller;
import servers.modeller.settings.model;
import models.modeller.entities.model;

void uimMethodsCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimMethodsCreateAction~":uimMethodsCreateAction");

  MDLAction_CreateModel(serverModeller).request(req, res);
}

void uimMethodsUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimMethodsUpdateAction~":uimMethodsUpdateAction");

  MDLAction_UpdateModel(serverModeller).request(req, res);
}

void uimMethodsDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimMethodsDeleteAction~":uimMethodsDeleteAction");

  MDLAction_DeleteModel(serverModeller).request(req, res);
}
