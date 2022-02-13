module servers.modeller.pages.packages.update;

@safe:
import servers.modeller;

void uimPackagesEdit(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimPackagesEdit~":uimPackagesEdit");

  MDLPackagesUpdatePageController(serverModeller).request(req, res);
}