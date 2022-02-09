module servers.modeller.pages.models.create;

@safe:
import servers.modeller;

void uimModelsCreate(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModelsCreate~":uimModelsCreate");

  MDLModelsCreatePageController(serverModeller).request(req, res);
}
