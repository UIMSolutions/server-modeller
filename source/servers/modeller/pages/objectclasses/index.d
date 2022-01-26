module servers.modeller.pages.objectclasses.index;

@safe:
import servers.modeller;

void uimObjectClassesIndex(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimObjectClassesIndex~":uimObjectClassesIndex");

  MDLObjectClassesIndexPageController(serverMdl).request(req, res);
}