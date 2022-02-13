module servers.modeller.pages.modules.index;

@safe:
import servers.modeller;

void uimModulesIndex(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModulesIndex~":uimModulesIndex");

  MDLModulesIndexPageController(serverModeller).request(req, res);
}