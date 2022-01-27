module servers.modeller.pages.attributeclasses.update;

@safe:
import servers.modeller;

void uimAttributeClassesEdit(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAttributeClassesEdit~":uimAttributeClassesEdit");

  MDLAttributeClassesUpdatePageController(serverModeller).request(req, res);
}