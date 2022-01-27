module servers.modeller.pages.attributeclasses.delete_;

@safe:
import servers.modeller;

void uimAttributeClassesDelete(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributeClassesDelete~":uimAttributeClassesDelete");

  MDLAttributeClassesDeletePageController(serverModeller).request(req, res);
}