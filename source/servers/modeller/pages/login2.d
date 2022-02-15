module servers.modeller.pages.login2;

@safe:
import servers.modeller;

void uimLogin2Page(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimLogin2Page~":uimLogin2Page");

  APPLogin2PageController(serverModeller).request(req, res);
}

void uimLogin2Action(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimLogin2Action~":uimLogin2Action");

  APPLogin2ActionController(serverModeller).request(req, res);
}
