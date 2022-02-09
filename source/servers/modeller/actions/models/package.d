module servers.modeller.actions.models;

@safe:
import servers.modeller;
import servers.modeller.settings.model;
import models.modeller.entities.model;

void uimModelsCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModelsCreateAction~":uimModelsCreateAction");

  auto action = MDLAction_CreateModel(serverModeller);
  action.request(req, res);
}

void uimModelsUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModelsUpdateAction~":uimModelsUpdateAction");

  auto action = MDLAction_UpdateModel(serverModeller);
  action.request(req, res);
}

void uimModelsDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModelsDeleteAction~":uimModelsDeleteAction");

  auto action = MDLAction_DeleteModel(serverModeller);
  action.request(req, res);
}
