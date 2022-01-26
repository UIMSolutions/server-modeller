module servers.modeller.pages.attributes.index;

@safe:
import servers.modeller;

void uimAttributesIndex(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributesIndex~":uimAttributesIndex");

  MDLAttributesIndexPageController(serverMdl).request(req, res);
}