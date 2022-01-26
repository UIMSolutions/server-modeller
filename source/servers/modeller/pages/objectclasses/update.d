module servers.modeller.pages.objectclasses.update;

@safe:
import servers.modeller;

void uimObjectClassesEdit(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimObjectClassesEdit~":uimObjectClassesEdit");

  MDLObjectClassesUpdatePageController(serverMdl).request(req, res);
}