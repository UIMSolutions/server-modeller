module servers.modeller.pages.models.update;

@safe:
import servers.modeller;

void uimModelsEdit(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModelsEdit~":uimModelsEdit");

  MDLModelsUpdatePageController(serverModeller).request(req, res);
}