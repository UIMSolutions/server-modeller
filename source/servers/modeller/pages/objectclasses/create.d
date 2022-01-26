module servers.modeller.pages.objectclasses.create;

@safe:
import servers.modeller;

void uimObjectClassesCreate(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimObjectClassesCreate~":uimObjectClassesCreate");

  MDLObjectClassesCreatePageController(serverMdl).request(req, res);
}
