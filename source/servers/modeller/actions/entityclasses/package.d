module servers.modeller.actions.entityclasses;

@safe:
import servers.modeller;
import servers.modeller.settings.entityclasses;
import models.cms.entities.link;

void uimObjectClassesCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimObjectClassesCreateAction~":uimObjectClassesCreateAction");

  auto action = MDLAction_CreateAttributeClass(serverCms);
  action.request(req, res);
}

void uimObjectClassesUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimObjectClassesUpdateAction~":uimObjectClassesUpdateAction");

  auto action = MDLAction_UpdateAttributeClass(serverCms);
  action.request(req, res);
}

void uimObjectClassesDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimObjectClassesDeleteAction~":uimObjectClassesDeleteAction");

  auto action = MDLAction_DeleteAttributeClass(serverCms);
  action.request(req, res);
}
