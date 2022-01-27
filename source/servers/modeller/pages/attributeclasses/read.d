module servers.modeller.pages.attributeclasses.read;

@safe:
import servers.modeller;

void uimAttributeClassesView(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributeClassesView~":uimAttributeClassesView");

  MDLAttributeClassesReadPageController(serverModeller).request(req, res);
}