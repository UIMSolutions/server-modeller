module servers.modeller.pages.objectclasses.read;

@safe:
import servers.modeller;

void uimObjectClassesView(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimObjectClassesView~":uimObjectClassesView");

  MDLObjectClassesReadPageController(serverMdl).request(req, res);
}