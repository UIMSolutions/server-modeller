module servers.modeller.pages.models.index;

@safe:
import servers.modeller;

void uimModelsIndex(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModelsIndex~":uimModelsIndex");

  MDLModelsIndexPageController(serverModeller).request(req, res);
}