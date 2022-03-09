module servers.modeller.pages.login;

@safe:
import servers.modeller;

void uimLoginPage(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimLoginPage~":uimLoginPage");

  APPLoginPageController(serverModeller).request(req, res);
}

void uimLoginAction(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimLoginAction~":uimLoginAction");

  APPLoginActionController(serverModeller).request(req, res);
}

