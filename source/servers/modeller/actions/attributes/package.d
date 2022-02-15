module servers.modeller.actions.attributes;

@safe:
import servers.modeller;
import servers.modeller.settings.attribute;
import models.modeller.entities.attribute;

void uimAttributesCreateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributesCreateAction~":uimAttributesCreateAction");

  MDLAction_CreateAttribute(serverModeller).request(req, res);
}

void uimAttributesUpdateAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributesUpdateAction~":uimAttributesUpdateAction");

  MDLAction_UpdateAttribute(serverModeller).request(req, res);
}

void uimAttributesDeleteAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributesDeleteAction~":uimAttributesDeleteAction");

  MDLAction_DeleteAttribute(serverModeller).request(req, res);
}
