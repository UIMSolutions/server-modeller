module servers.modeller.pages.apps.index;

@safe:
import servers.modeller;

void uimAppsIndex(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAppsIndex~":uimAppsIndex");

  MDLAppsIndexPageController(serverModeller).request(req, res);
}