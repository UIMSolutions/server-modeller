module servers.modeller.pages.methods.update;

@safe:
import servers.modeller;

void uimMethodsEdit(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimMethodsEdit~":uimMethodsEdit");

  MDLMethodsUpdatePageController(serverModeller).request(req, res);
}