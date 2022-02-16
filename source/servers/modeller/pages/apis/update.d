module servers.modeller.pages.apis.update;

@safe:
import servers.modeller;

void uimApisEdit(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimApisEdit~":uimApisEdit");

  MDLApisUpdatePageController(serverModeller).request(req, res);
}