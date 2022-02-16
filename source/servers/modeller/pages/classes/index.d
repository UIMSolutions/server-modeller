module servers.modeller.pages.classes.index;

@safe:
import servers.modeller;

void uimClassesIndex(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimClassesIndex~":uimClassesIndex");

  MDLClassesIndexPageController(serverModeller).request(req, res);
}