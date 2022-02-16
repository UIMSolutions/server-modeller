module servers.modeller.pages.apps.update;

@safe:
import servers.modeller;

void uimAppsEdit(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAppsEdit~":uimAppsEdit");

  MDLAppsUpdatePageController(serverModeller).request(req, res);
}