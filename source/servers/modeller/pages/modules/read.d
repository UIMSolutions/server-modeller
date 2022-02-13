module servers.modeller.pages.modules.read;

@safe:
import servers.modeller;

void uimModulesView(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModulesView~":uimModulesView");

  MDLModulesReadPageController(serverModeller).request(req, res);
}