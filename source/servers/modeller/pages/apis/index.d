module servers.modeller.pages.apis.index;

@safe:
import servers.modeller;

void uimApisIndex(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimApisIndex~":uimApisIndex");

  MDLApisIndexPageController(serverModeller).request(req, res);
}