module servers.modeller.pages.packages.index;

@safe:
import servers.modeller;

void uimPackagesIndex(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimPackagesIndex~":uimPackagesIndex");

  MDLPackagesIndexPageController(serverModeller).request(req, res);
}