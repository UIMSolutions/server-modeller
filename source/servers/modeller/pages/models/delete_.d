module servers.modeller.pages.models.delete_;

@safe:
import servers.modeller;

void uimModelsDelete(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModelsDelete~":uimModelsDelete");

  MDLModelsDeletePageController(serverModeller).request(req, res);
}