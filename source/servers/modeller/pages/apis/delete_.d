module servers.modeller.pages.apis.delete_;

@safe:
import servers.modeller;

void uimApisDelete(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimApisDelete~":uimApisDelete");

  MDLApisDeletePageController(serverModeller).request(req, res);
}