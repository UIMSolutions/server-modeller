module servers.modeller.actions.modules;

@safe:
import servers.modeller;
import servers.modeller.settings.model;
import models.modeller.entities.model;

void uimModulesCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModulesCreateAction~":uimModulesCreateAction");

  MDLAction_CreateModel(serverModeller).request(req, res);
}

void uimModulesUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModulesUpdateAction~":uimModulesUpdateAction");

  MDLAction_UpdateModel(serverModeller).request(req, res);
}

void uimModulesDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModulesDeleteAction~":uimModulesDeleteAction");

  MDLAction_DeleteModel(serverModeller).request(req, res);
}
