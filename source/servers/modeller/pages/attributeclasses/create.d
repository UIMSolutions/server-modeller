module servers.modeller.pages.attributeclasses.create;

@safe:
import servers.modeller;

void uimAttributeClassesCreate(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributeClassesCreate~":uimAttributeClassesCreate");

  MDLAttributeClassesCreatePageController(serverModeller).request(req, res);
}
