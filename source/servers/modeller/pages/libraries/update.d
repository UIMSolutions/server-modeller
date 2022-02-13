module servers.modeller.pages.libraries.update;

@safe:
import servers.modeller;

void uimLibrariesEdit(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimLibrariesEdit~":uimLibrariesEdit");

  MDLLibrariesUpdatePageController(serverModeller).request(req, res);
}