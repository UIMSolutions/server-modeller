module servers.modeller.pages.apis.create;

@safe:
import servers.modeller;

void uimApisCreate(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimApisCreate~":uimApisCreate");

  MDLApisCreatePageController(serverModeller).request(req, res);
}
