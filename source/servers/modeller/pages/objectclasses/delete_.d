module servers.modeller.pages.objectclasses.delete_;

@safe:
import servers.modeller;

void uimObjectClassesDelete(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimObjectClassesDelete~":uimObjectClassesDelete");

  MDLObjectClassesDeletePageController(serverMdl).request(req, res);
}