module servers.modeller.pages.attributes.update;

@safe:
import servers.modeller;

void uimAttributesEdit(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributesEdit~":uimAttributesEdit");

  MDLAttributesUpdatePageController(serverMdl).request(req, res);
}