module servers.modeller.pages.apps.delete_;

@safe:
import servers.modeller;

void uimAppsDelete(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAppsDelete~":uimAppsDelete");

  MDLAppsDeletePageController(serverModeller).request(req, res);
}