module servers.modeller.pages.classes.read;

@safe:
import servers.modeller;

void uimClassesView(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimClassesView~":uimClassesView");

  MDLClassesReadPageController(serverModeller).request(req, res);
}