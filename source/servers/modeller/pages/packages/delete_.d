module servers.modeller.pages.packages.delete_;

@safe:
import servers.modeller;

void uimPackagesDelete(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimPackagesDelete~":uimPackagesDelete");

  MDLPackagesDeletePageController(serverModeller).request(req, res);
}