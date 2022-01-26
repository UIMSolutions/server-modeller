module servers.modeller.pages.attributeclasses.index;

@safe:
import servers.modeller;

void uimAttributeClassesIndex(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributeClassesIndex~":uimAttributeClassesIndex");

  MDLAttributeClassesIndexPageController(serverMdl).request(req, res);
}