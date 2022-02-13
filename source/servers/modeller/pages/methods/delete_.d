module servers.modeller.pages.methods.delete_;

@safe:
import servers.modeller;

void uimMethodsDelete(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimMethodsDelete~":uimMethodsDelete");

  MDLMethodsDeletePageController(serverModeller).request(req, res);
}