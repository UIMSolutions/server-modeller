module servers.modeller.actions.entityclasses;

@safe:
import servers.modeller;
import servers.modeller.settings.entityclass;
import models.modeller.entities.entityclass;

void uimEntityClassesCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimEntityClassesCreateAction~":uimEntityClassesCreateAction");

  MDLAction_CreateEntityClass(serverModeller).request(req, res);
}

void uimEntityClassesUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimEntityClassesUpdateAction~":uimEntityClassesUpdateAction");

  MDLAction_UpdateEntityClass(serverModeller).request(req, res);
}

void uimEntityClassesDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimEntityClassesDeleteAction~":uimEntityClassesDeleteAction");

  MDLAction_DeleteEntityClass(serverModeller).request(req, res);
}
