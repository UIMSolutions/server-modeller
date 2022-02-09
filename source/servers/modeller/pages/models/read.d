module servers.modeller.pages.models.read;

@safe:
import servers.modeller;

void uimModelsView(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModelsView~":uimModelsView");

  MDLModelsReadPageController(serverModeller).request(req, res);
}