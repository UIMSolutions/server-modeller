module servers.modeller.pages.methods.index;

@safe:
import servers.modeller;

void uimMethodsIndex(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimMethodsIndex~":uimMethodsIndex");

  MDLMethodsIndexPageController(serverModeller).request(req, res);
}