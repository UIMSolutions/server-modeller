module servers.modeller.pages.libraries.index;

@safe:
import servers.modeller;

void uimLibrariesIndex(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimLibrariesIndex~":uimLibrariesIndex");

  MDLLibrariesIndexPageController(serverModeller).request(req, res);
}