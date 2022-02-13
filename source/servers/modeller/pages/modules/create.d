module servers.modeller.pages.modules.create;

@safe:
import servers.modeller;

void uimModulesCreate(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimModulesCreate~":uimModulesCreate");

  MDLModulesCreatePageController(serverModeller).request(req, res);
}
