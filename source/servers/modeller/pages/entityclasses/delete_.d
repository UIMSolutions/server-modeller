module servers.modeller.pages.entityclasses.delete_;

@safe:
import servers.modeller;

void uimEntityClassesDelete(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimEntityClassesDelete~":uimEntityClassesDelete");

  MDLEntityClassesDeletePageController(serverModeller).request(req, res);
}