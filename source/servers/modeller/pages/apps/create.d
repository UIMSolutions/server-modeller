module servers.modeller.pages.apps.create;

@safe:
import servers.modeller;

void uimAppsCreate(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAppsCreate~":uimAppsCreate");

  MDLAppsCreatePageController(serverModeller).request(req, res);
}
