module servers.modeller.pages.modules.update;

@safe:
import servers.modeller;

void uimModulesEdit(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModulesEdit~":uimModulesEdit");

  MDLModulesUpdatePageController(serverModeller).request(req, res);
}