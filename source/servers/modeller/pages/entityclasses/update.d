module servers.modeller.pages.entityclasses.update;

@safe:
import servers.modeller;

void uimEntityClassesEdit(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimEntityClassesEdit~":uimEntityClassesEdit");

  MDLEntityClassesUpdatePageController(serverModeller).request(req, res);
}