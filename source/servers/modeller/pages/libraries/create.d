module servers.modeller.pages.libraries.create;

@safe:
import servers.modeller;

void uimLibrariesCreate(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimLibrariesCreate~":uimLibrariesCreate");

  MDLLibrariesCreatePageController(serverModeller).request(req, res);
}
