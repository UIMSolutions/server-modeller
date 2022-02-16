module servers.modeller.pages.classes.create;

@safe:
import servers.modeller;

void uimClassesCreate(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimClassesCreate~":uimClassesCreate");

  MDLClassesCreatePageController(serverModeller).request(req, res);
}
