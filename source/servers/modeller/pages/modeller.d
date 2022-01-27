module servers.modeller.pages.modeller;

@safe:
import servers.modeller;

void uimModellerPage(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModellerPage~":uimModellerPage");

  MDLIndexPageController(serverModeller).request(req, res);
}
