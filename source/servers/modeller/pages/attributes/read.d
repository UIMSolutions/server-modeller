module servers.modeller.pages.attributes.read;

@safe:
import servers.modeller;

void uimAttributesView(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributesView~":uimAttributesView");

  MDLAttributesReadPageController(serverMdl).request(req, res);
}