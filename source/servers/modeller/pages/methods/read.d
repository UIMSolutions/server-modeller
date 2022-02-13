module servers.modeller.pages.methods.read;

@safe:
import servers.modeller;

void uimMethodsView(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimMethodsView~":uimMethodsView");

  MDLMethodsReadPageController(serverModeller).request(req, res);
}