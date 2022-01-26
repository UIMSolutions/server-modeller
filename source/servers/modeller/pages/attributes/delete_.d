module servers.modeller.pages.attributes.delete_;

@safe:
import servers.modeller;

void uimAttributesDelete(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributesDelete~":uimAttributesDelete");

  MDLAttributesDeletePageController(serverMdl).request(req, res);
}