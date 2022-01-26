module servers.modeller.actions.attributes;

@safe:
import servers.modeller;
import servers.modeller.settings.attributes;
import models.modeller.entities.attribute;

void uimAttributesCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributesCreateAction~":uimAttributesCreateAction");

  auto action = MDLAction_CreateAttribute(serverCms);
  action.request(req, res);
}

void uimAttributesUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributesUpdateAction~":uimAttributesUpdateAction");

  auto action = MDLAction_UpdateAttribute(serverCms);
  action.request(req, res);
}

void uimAttributesDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributesDeleteAction~":uimAttributesDeleteAction");

  auto action = MDLAction_DeleteAttribute(serverCms);
  action.request(req, res);
}
