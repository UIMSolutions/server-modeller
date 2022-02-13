module servers.modeller.pages.methods.create;

@safe:
import servers.modeller;

void uimMethodsCreate(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimMethodsCreate~":uimMethodsCreate");

  MDLMethodsCreatePageController(serverModeller).request(req, res);
}
