module servers.modeller.pages.login2;

@safe:
import servers.modeller;

void uimLogin2Page(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimLogin2Page~":uimLogin2Page");

  APPLogin2PageController(serverModeller).request(req, res);
}

void uimLogin2Action(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimLogin2Action~":uimLogin2Action");

  auto action = APPLogin2ActionController(serverModeller);
  action.request(req, res);
}
