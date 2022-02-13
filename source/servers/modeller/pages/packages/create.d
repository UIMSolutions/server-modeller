module servers.modeller.pages.packages.create;

@safe:
import servers.modeller;

void uimPackagesCreate(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimPackagesCreate~":uimPackagesCreate");

  MDLPackagesCreatePageController(serverModeller).request(req, res);
}
