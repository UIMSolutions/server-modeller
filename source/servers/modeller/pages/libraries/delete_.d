module servers.modeller.pages.libraries.delete_;

@safe:
import servers.modeller;

void uimLibrariesDelete(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimLibrariesDelete~":uimLibrariesDelete");

  MDLLibrariesDeletePageController(serverModeller).request(req, res);
}