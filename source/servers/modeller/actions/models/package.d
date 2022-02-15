module servers.modeller.actions.models;

@safe:
import servers.modeller;
import servers.modeller.settings.model;
import models.modeller.entities.model;

void uimModelsCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModelsCreateAction~":uimModelsCreateAction");

  MDLAction_CreateModel(serverModeller).request(req, res);
}

void uimModelsUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModelsUpdateAction~":uimModelsUpdateAction");

  MDLAction_UpdateModel(serverModeller).request(req, res);
}

void uimModelsDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModelsDeleteAction~":uimModelsDeleteAction");

  MDLAction_DeleteModel(serverModeller).request(req, res);
}
