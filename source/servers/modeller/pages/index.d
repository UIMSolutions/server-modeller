module servers.modeller.pages.index;

@safe:
import servers.modeller;

void uimIndex(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimIndex~":uimIndex");

  MDLIndexPageController(serverModeller).request(req, res);
}

