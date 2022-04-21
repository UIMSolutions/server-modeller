module servers.modeller.pages.index;

@safe:
import servers.modeller;

void uimIndex(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimIndex~":uimIndex");

  MDLIndexPageController(thisServer).request(req, res);
}

