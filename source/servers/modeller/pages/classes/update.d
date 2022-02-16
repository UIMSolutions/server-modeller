module servers.modeller.pages.classes.update;

@safe:
import servers.modeller;

void uimClassesEdit(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimClassesEdit~":uimClassesEdit");

  MDLClassesUpdatePageController(serverModeller).request(req, res);
}