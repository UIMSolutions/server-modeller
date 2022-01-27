module servers.modeller.pages.entityclasses.index;

@safe:
import servers.modeller;

void uimEntityClassesIndex(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimEntityClassesIndex~":uimEntityClassesIndex");

  MDLEntityClassesIndexPageController(serverModeller).request(req, res);
}