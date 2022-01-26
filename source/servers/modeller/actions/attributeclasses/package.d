module servers.modeller.actions.attributeclasses;

@safe:
import servers.modeller;
import servers.modeller.settings.attributeclasses;
import models.cms.entities.link;

void uimAttributeClassesCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributeClassesCreateAction~":uimAttributeClassesCreateAction");

  auto action = MDLAction_CreateAttributeClass(serverCms);
  action.request(req, res);
}

void uimAttributeClassesUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributeClassesUpdateAction~":uimAttributeClassesUpdateAction");

  auto action = MDLAction_UpdateAttributeClass(serverCms);
  action.request(req, res);
}

void uimAttributeClassesDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributeClassesDeleteAction~":uimAttributeClassesDeleteAction");

  auto action = MDLAction_DeleteAttributeClass(serverCms);
  action.request(req, res);
}
