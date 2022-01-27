module servers.modeller.pages.entityclasses.read;

@safe:
import servers.modeller;

void uimEntityClassesView(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimEntityClassesView~":uimEntityClassesView");

  MDLEntityClassesReadPageController(serverModeller).request(req, res);
}