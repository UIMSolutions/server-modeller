module servers.modeller.actions.attributeclasses;

@safe:
import servers.modeller;
import servers.modeller.settings.attributeclass;
import models.modeller.entities.attributeclass;

void uimAttributeClassesCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributeClassesCreateAction~":uimAttributeClassesCreateAction");

  MDLAction_CreateAttributeClass(serverModeller).request(req, res);
}

void uimAttributeClassesUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributeClassesUpdateAction~":uimAttributeClassesUpdateAction");

  MDLAction_UpdateAttributeClass(serverModeller).request(req, res);
}

void uimAttributeClassesDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributeClassesDeleteAction~":uimAttributeClassesDeleteAction");

  MDLAction_DeleteAttributeClass(serverModeller).request(req, res);
}
