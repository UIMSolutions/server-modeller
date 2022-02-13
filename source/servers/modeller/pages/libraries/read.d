module servers.modeller.pages.libraries.read;

@safe:
import servers.modeller;

void uimLibrariesView(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimLibrariesView~":uimLibrariesView");

  MDLLibrariesReadPageController(serverModeller).request(req, res);
}