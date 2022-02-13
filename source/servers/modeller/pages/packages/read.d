module servers.modeller.pages.packages.read;

@safe:
import servers.modeller;

void uimPackagesView(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimPackagesView~":uimPackagesView");

  MDLPackagesReadPageController(serverModeller).request(req, res);
}