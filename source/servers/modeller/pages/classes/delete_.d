module servers.modeller.pages.classes.delete_;

@safe:
import servers.modeller;

void uimClassesDelete(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimClassesDelete~":uimClassesDelete");

  MDLClassesDeletePageController(serverModeller).request(req, res);
}