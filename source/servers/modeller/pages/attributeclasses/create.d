module servers.modeller.pages.attributeclasses.create;

@safe:
import servers.modeller;

void uimAttributeClassesCreate(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributeClassesCreate~":uimAttributeClassesCreate");

  MDLAttributeClassesCreatePageController(serverMdl).request(req, res);
}
