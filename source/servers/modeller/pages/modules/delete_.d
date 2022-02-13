module servers.modeller.pages.modules.delete_;

@safe:
import servers.modeller;

void uimModulesDelete(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModulesDelete~":uimModulesDelete");

  MDLModulesDeletePageController(serverModeller).request(req, res);
}