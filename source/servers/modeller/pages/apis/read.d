module servers.modeller.pages.apis.read;

@safe:
import servers.modeller;

void uimApisView(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimApisView~":uimApisView");

  MDLApisReadPageController(serverModeller).request(req, res);
}