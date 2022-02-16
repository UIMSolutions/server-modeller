module servers.modeller.pages.apps.read;

@safe:
import servers.modeller;

void uimAppsView(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimAppsView~":uimAppsView");

  MDLAppsReadPageController(serverModeller).request(req, res);
}