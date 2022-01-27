module servers.modeller.pages.entityclasses.create;

@safe:
import servers.modeller;

void uimEntityClassesCreate(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimEntityClassesCreate~":uimEntityClassesCreate");

  MDLEntityClassesCreatePageController(serverModeller).request(req, res);
}
