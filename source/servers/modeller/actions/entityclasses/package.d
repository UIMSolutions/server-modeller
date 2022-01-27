module servers.modeller.actions.entityclasses;

@safe:
import servers.modeller;
import servers.modeller.settings.entityclass;
import models.modeller.entities.entityclass;

void uimEntityClassesCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimEntityClassesCreateAction~":uimEntityClassesCreateAction");

  auto action = MDLAction_CreateAttributeClass(serverModeller);
  action.request(req, res);
}

void uimEntityClassesUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimEntityClassesUpdateAction~":uimEntityClassesUpdateAction");

  auto action = MDLAction_UpdateAttributeClass(serverModeller);
  action.request(req, res);
}

void uimEntityClassesDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimEntityClassesDeleteAction~":uimEntityClassesDeleteAction");

  auto action = MDLAction_DeleteAttributeClass(serverModeller);
  action.request(req, res);
}
