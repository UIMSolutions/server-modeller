module servers.modeller.pages.attributes.create;

@safe:
import servers.modeller;

void uimAttributesCreate(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributesCreate~":uimAttributesCreate");

  MDLAttributesCreatePageController(serverMdl).request(req, res);
}
